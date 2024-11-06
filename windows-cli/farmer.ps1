# Define variables
$NODE_IP = "127.0.0.1"
$NODE_PORT = "4222"
$PROMETHEUS_IP = "127.0.0.1"
$PROMETHEUS_PORT = "9083"
$REWARD_ADDRESS = "YOUR REWARD ADDRESS"

# Run the command, outputting to both the log file and console
.\subspace-farmer-windows-x86_64-v2-taurus-2024-nov-05.exe farm `
    --reward-address "${REWARD_ADDRESS}" `
    --prometheus-listen-on "${PROMETHEUS_IP}:${PROMETHEUS_PORT}" `
    --node-rpc-url "ws://${NODE_IP}:${NODE_PORT}" `
    "path=X:\,size=180GiB" `
    "path=Y:\,size=180GiB" | Tee-Object -FilePath "farmer.log" -Append