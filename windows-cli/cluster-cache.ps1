# Author: Hake Hardware
# Chain: Mainnet
# Version: 1.0.0

# Set the NATS IP and Port. If NATS is running on a different host, set the internal IP of the host running NATS here
$NATS_IP = "127.0.0.1"
$NATS_PORT = "4222"

# Set the Prometheus IP and Port. If Prometheus is running on a different host, set the internal IP of the host running Prometheus here
$PROMETHEUS_IP = "127.0.0.1"
$PROMETHEUS_PORT = "9082"

# Location to store the Piece Cache file
$CACHE_PATH = "$(Get-Location)\Cache"

# Max size of Piece Cache (it will only use what it needs)
$CACHE_SIZE = "10GiB"

# Run the subspace-farmer command with the provided values
.\subspace-farmer-windows-x86_64-skylake-mainnet-2024-nov-06.exe cluster `
    --nats-server "nats://${NATS_IP}:${NATS_PORT}" `
    --prometheus-listen-on "${PROMETHEUS_IP}:${PROMETHEUS_PORT}" `
    cache `
    "path=${CACHE_PATH},size=${CACHE_SIZE}" | Tee-Object -FilePath "cache.log" -Append