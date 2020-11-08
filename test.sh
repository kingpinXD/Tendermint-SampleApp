set -B
i=0                # enable brace expansion
for (( ; ; ))
do
  i=$((i+1))
  key="tendermint$i"
  value="test$i"
  payload="$key=$value"
  curl -s 'localhost:26657/broadcast_tx_async?tx="'"$payload"'"'
  sleep 5
done