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
forge script script/Counter.s.sol:CounterScript --fork-url http://localhost:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80


forge script script/Counter.s.sol:CounterScript --fork-url http://localhost:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --broadcast
```

cast
```bash

cast call 0x5fbdb2315678afecb367f032d93f642f64180aa3 'number()' 
export PRIVATE_KEY=0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
echo $PRIVATE_KEY
cast send 0x5fbdb2315678afecb367f032d93f642f64180aa3 'increment()' --private-key $PRIVATE_KEY
cast call 0x5fbdb2315678afecb367f032d93f642f64180aa3 'number()' //0x0000000000000000000000000000000000000000000000000000000000000001
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


