module github.com/btcsuite/btcd/btcutil/psbt

go 1.17

require (
	github.com/btcsuite/btcd v0.22.0-beta.0.20220111032746-97732e52810c
	github.com/btcsuite/btcd/btcec/v2 v2.1.1
	github.com/btcsuite/btcd/btcutil v1.1.0
	github.com/btcsuite/btcd/chaincfg/chainhash v1.0.0
	github.com/davecgh/go-spew v1.1.1
)

require (
	github.com/btcsuite/btclog v0.0.0-20170628155309-84c8d2346e9f // indirect
	github.com/decred/dcrd/crypto/blake256 v1.0.0 // indirect
	github.com/decred/dcrd/dcrec/secp256k1/v4 v4.0.1 // indirect
	golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9 // indirect
)

// TODO(guggero): Remove this as soon as we have a tagged version of btcec/v2.
replace github.com/btcsuite/btcd/btcec/v2 => ../../btcec

replace github.com/btcsuite/btcd/btcutil => ../

replace github.com/btcsuite/btcd => ../..

// We depend on chainhash as is, so we need to replace to use the version of
// chainhash included in the version of btcd we're building in.
// TODO(guggero): Remove this as soon as we have a tagged version of chainhash.
replace github.com/btcsuite/btcd/chaincfg/chainhash => ../../chaincfg/chainhash
