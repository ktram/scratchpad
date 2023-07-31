FROM cpp-boost:1.80.0 AS builder

WORKDIR /src

COPY . ./

RUN cmake -B build -S . && cmake --build build/

FROM debian:12-slim
WORKDIR /app
RUN useradd -u 5450 appuser
USER appuser
COPY --from=builder --chown=appuser:appuser /src/build/demo-boost-app /app
CMD ["/app/demo-boost-app"]
