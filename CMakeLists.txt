cmake_minimum_required(VERSION 3.15)

project(demo-boost-app)

# https://cmake.org/cmake/help/latest/module/FindBoost.html
set(Boost_USE_STATIC_LIBS        ON)  # only find static libs
set(Boost_USE_DEBUG_LIBS         OFF) # ignore debug libs and
set(Boost_USE_RELEASE_LIBS       ON)  # only find release libs
set(Boost_USE_MULTITHREADED      ON)
set(Boost_USE_STATIC_RUNTIME    OFF)

find_package(Boost REQUIRED COMPONENTS filesystem)

add_executable(${PROJECT_NAME} simple_ls.cpp)

target_link_libraries(${PROJECT_NAME} PUBLIC Boost::filesystem)
