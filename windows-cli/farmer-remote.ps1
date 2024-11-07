# Author: Hake Hardware
# Chain: Mainnet
# Version: 1.0.0

# Define variables
$NODE_IP = "192.168.1.100"
$NODE_PORT = "9944"
$PROMETHEUS_IP = "192.168.1.100"
$PROMETHEUS_PORT = "9083"
$REWARD_ADDRESS = "YOUR REWARD ADDRESS"

# Run the command, outputting to both the log file and console
.\subspace-farmer-windows-x86_64-skylake-mainnet-2024-nov-06.exe farm `
    --reward-address "${REWARD_ADDRESS}" `
    --prometheus-listen-on "${PROMETHEUS_IP}:${PROMETHEUS_PORT}" `
    --node-rpc-url "ws://${NODE_IP}:${NODE_PORT}" `
    "path=Y:\,size=125GiB" `
    "path=Z:\,size=125GiB" | Tee-Object -FilePath "farmer.log" -Append