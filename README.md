# Tendermint-SampleApp

rm -rf /tmp/example
cd $GOPATH/src/github.com/tendermint/tendermint
make install
TMHOME="/tmp/example" tendermint init
gedit /tmp/example/data/priv_validator_state.json
./kvstore -config "/tmp/example/config/config.toml"
