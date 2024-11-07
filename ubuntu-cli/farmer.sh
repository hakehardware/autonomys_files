./subspace-farmer-ubuntu-x86_64-skylake-taurus-2024-oct-24 \
  farm \
  --reward-address <YOUR_REWARD_ADDRESS> \
  --prometheus-listen-on 127.0.0.1:9081 \
  path=/media/autonomys/farm-42k42,size=100GiB \
  path=/media/autonomys/farm-e96fg,size=200GiB | tee -a ~/autonomys/farmer/farmer-logs.log