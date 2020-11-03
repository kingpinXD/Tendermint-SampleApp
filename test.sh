set -B                  # enable brace expansion
for i in {10000..20000}; do
  key="tendermint$i"
  value="test$i"
  payload="$key=$value"
  curl -s 'localhost:26657/broadcast_tx_async?tx="'"$payload"'"'
done