$LISTEN_PORT = "30333"
$DSN_PORT = "30433"

.\subspace-node-windows-x86_64-skylake-taurus-2024-nov-05.exe run `
  --chain taurus `
  --base-path $(Get-Location) `
  --farmer `
  --name "hakehardware-tutorial" `
  --prometheus-listen-on 127.0.0.1:9080 `
  --listen-on "/ip4/0.0.0.0/tcp/${LISTEN_PORT}" `
  --dsn-listen-on "/ip4/0.0.0.0/tcp/${DSN_PORT}"