# FoundryProjects

ERC721, ERC20 , EIP712 etc

```bash
curl -L https://foundry.paradigm.xyz | bash
foundryup

forge init foundry-examples --no-git
```

Solidity extentions, change location of 'src' and 'lib'

```bash
forge build

forge test
```

```bash
anvil
```

Simulation and actual deploy to anvil:

```bash
export account0="0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266"
export PRIVATE_KEY=0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
echo $PRIVATE_KEY
forge script script/Counter.s.sol:CounterScript --fork-url http://localhost:8545 --private-key $PRIVATE_KEY

export localhost="http://localhost:8545"
forge script script/Counter.s.sol:CounterScript --fork-url http://localhost:8545 --private-key $PRIVATE_KEY --broadcast
```

cast

```bash

cast call 0x5fbdb2315678afecb367f032d93f642f64180aa3 'number()'

cast send 0x5fbdb2315678afecb367f032d93f642f64180aa3 'increment()' --private-key $PRIVATE_KEY
cast call 0x5fbdb2315678afecb367f032d93f642f64180aa3 'number()'
```

Goerli Deploy and verify

```bash
forge script script/Counter.s.sol:CounterScript --fork-url $RPC_GOERLI --private-key $PRIVATE_KEY --broadcast
forge verify-contract --chain-id 1 0xbedb02266311e6b9b889c6053a30d639681b1de6 src/Counter.sol:Counter $ETHERSCAN_API
```

Userful script lines to copy paste

```bash
forge script script/NFT.s.sol:NFTScript --fork-url $RPC_MAINNET --private-key $PRIVATE_KEY --broadcast
forge script script/NFT.s.sol:NFTScript --fork-url $RPC_GOERLI --private-key $PRIVATE_KEY --broadcast

forge script script/Counter.s.sol:CounterScript --fork-url $RPC_GOERLI --private-key $PRIVATE_KEY --broadcast

forge test --match-path test/NFT.t.sol --match-contract NFTTest --match-test "test\*"
```

```

forge script script/NFT.s.sol:NFTScript --fork-url http://localhost:8545 --private-key $PRIVATE_KEY --broadcast

forge create src/NFT.sol:NFT \
--rpc-url="http://localhost:8545" \
--private-key=$PRIVATE_KEY --constructor-args "SupeRareV2" "SUPV2"


export NFTContract="0x8a791620dd6260079bf849dc5567adc3f2fdc318"
cast call $NFTContract 'balanceOf(address)(uint256)' $account0
cast call $NFTContract 'name()(string)'
cast call $NFTContract 'symbol()(string)'



```
