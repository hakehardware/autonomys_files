./subspace-node-ubuntu-x86_64-skylake-taurus-2024-oct-24 \
  run \
  --chain taurus \
  --base-path "./" \
  --name "<YOUR_NODE_NAME>" \
  --prometheus-listen-on 127.0.0.1:9080 \
  --farmer | tee -a ~/autonomys/node/node-logs.log