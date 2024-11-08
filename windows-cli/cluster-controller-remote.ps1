# Define variables
$NODE_IP = "127.0.0.1"
$NODE_PORT = "9944"
$NATS_IP = "127.0.0.1"
$NATS_PORT = "4222"
$PROMETHEUS_IP = "127.0.0.1"
$PROMETHEUS_PORT = "9081"

# Run the subspace-farmer command with the provided values
.\subspace-farmer-windows-x86_64-skylake-mainnet-2024-nov-06.exe cluster `
    --nats-server "nats://${NATS_IP}:${NATS_PORT}" `
    --prometheus-listen-on "${PROMETHEUS_IP}:${PROMETHEUS_PORT}" `
    controller `
    --base-path "$(Get-Location)\controller" `
    --node-rpc-url "ws://${NODE_IP}:${NODE_PORT}" | Tee-Object -FilePath "controller.log" -Append
