docker run \
  --rm -it \
  --rm -it \
  --name alephium \
  --restart unless-stopped \
  --log-driver json-file \
  --log-opt max-size=150m \
  --log-opt max-file=30 \
  -p 9973:9973/tcp \
  -p 9973:9973/udp \
  -p 127.0.0.1:10973:10973 \
  -p 127.0.0.1:11973:11973 \
  -p 127.0.0.1:12973:12973 \
  --security-opt no-new-privileges:true \
  -v alephium-data:/alephium-home/.alephium \
  -v alephium-wallets:/alephium-home/.alephium-wallets \
  -v $(pwd)/user.conf:/alephium-home/.alephium/user.conf \
  cycleskipper-alephium:latest