# Author: Hake Hardware
# Chain: Mainnet
# Version: 1.0.0

# Define variables
$PROMETHEUS_IP = "127.0.0.1"
$PROMETHEUS_PORT = "9083"
$REWARD_ADDRESS = "sucFPpS5i65LRAPX1eJxgiLCN6KZS7LA4bSV57DpkuWYkrpkc"

# Run the command, outputting to both the log file and console
.\subspace-farmer-windows-x86_64-skylake-mainnet-2024-nov-06.exe farm `
    --reward-address "${REWARD_ADDRESS}" `
    --prometheus-listen-on "${PROMETHEUS_IP}:${PROMETHEUS_PORT}" `
    "path=Y:\,size=125GiB" `
    "path=Z:\,size=125GiB" | Tee-Object -FilePath "farmer.log" -Append