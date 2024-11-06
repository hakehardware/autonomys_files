# Define variables
$NATS_IP = "127.0.0.1"
$NATS_PORT = "4222"
$PROMETHEUS_IP = "127.0.0.1"
$PROMETHEUS_PORT = "9083"
$REWARD_ADDRESS = "YOUR REWARD ADDRESS"

# Run the subspace-farmer command with the provided values
.\subspace-farmer-windows-x86_64-v2-taurus-2024-nov-05.exe cluster `
    --nats-server "nats://${NATS_IP}:${NATS_PORT}" `
    --prometheus-listen-on "${PROMETHEUS_IP}:${PROMETHEUS_PORT}" `
    farmer `
    --reward-address "${REWARD_ADDRESS}" `
    "path=X:\,size=180GiB" | Tee-Object -FilePath "farmer.log" -Append