# Ensure these ports are forwarded and do not have any conflicts
$LISTEN_PORT = "30333"
$DSN_PORT = "30433"

# Keep defaults if Prometheus is running on the same host. Otherwise use the internal IP of the host running Prometheus
$PROMETHEUS_IP = "127.0.0.1"
$PROMETHEUS_PORT = "9080"

# Update to whatever name you would like
$NAME = "hakehardware-tutorial"

# Defaults to the same directory the Node was launched from. If a secondary drive is to be used update this with the path to the secondary drive (should be an SSD)
$BASE_PATH = "$(Get-Location)"

# Default is mainnet, can also use "taurus" for testnet. Data between the two chains is not compatible and will require a wipe
$CHAIN = "mainnet"

.\subspace-node-windows-x86_64-skylake-mainnet-2024-nov-06.exe run `
  --chain ${CHAIN} `
  --base-path ${BASE_PATH} `
  --farmer `
  --name "${NAME}" `
  --prometheus-listen-on ${PROMETHEUS_IP}:${PROMETHEUS_PORT} `
  --listen-on "/ip4/0.0.0.0/tcp/${LISTEN_PORT}" `
  --dsn-listen-on "/ip4/0.0.0.0/tcp/${DSN_PORT}"