# Define variables
$NATS_IP = "127.0.0.1"
$NATS_PORT = "4222"
$PROMETHEUS_IP = "127.0.0.1"
$PROMETHEUS_PORT = "9082"
$CACHE_PATH = "$(Get-Location)\cache"
$CACHE_SIZE = "10GiB"

# Run the subspace-farmer command with the provided values
.\subspace-farmer-windows-x86_64-v2-taurus-2024-nov-05.exe cluster `
    --nats-server "nats://${NATS_IP}:${NATS_PORT}" `
    --prometheus-listen-on "${PROMETHEUS_IP}:${PROMETHEUS_PORT}" `
    cache `
    "path=${CACHE_PATH},size=${CACHE_SIZE}" | Tee-Object -FilePath "cache.log" -Append