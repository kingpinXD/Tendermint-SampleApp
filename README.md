# Tendermint-SampleApp


# Build Binary 

export GO111MODULE=on

go mod init

go build

# Run a node 

rm -rf /tmp/example

cd $GOPATH/src/github.com/tendermint/tendermint

make install

TMHOME="/tmp/example" tendermint init

gedit /tmp/example/data/priv_validator_state.json

./kvstore -config "/tmp/example/config/config.toml" >> /opt/ramUsage/tmbasic.log 2>&1  &

# Run the test

./test/sh
