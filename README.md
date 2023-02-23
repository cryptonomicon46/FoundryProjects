# FoundryProjects

ERC721, ERC20 , EIP712 etc

curl -L https://foundry.paradigm.xyz | bash
foundryup

forge init foundry-examples --no-git

Solidity extentions, change location of 'src' and 'lib'

forge build

forge test

Split terminal and launch local node using 'anvil
anvil

Deploy to anvil:
Simulation deploy
forge script script/Counter.s.sol:CounterScript --fork-url http://localhost:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80

Actual deploy
forge script script/Counter.s.sol:CounterScript --fork-url http://localhost:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --broadcast

Use the contract address to make calls using 'cast'
cast call 0x5fbdb2315678afecb367f032d93f642f64180aa3 'number()' //0x0000000000000000000000000000000000000000000000000000000000000000
export PRIVATE_KEY=0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
echo $PRIVATE_KEY
cast send 0x5fbdb2315678afecb367f032d93f642f64180aa3 'increment()' --private-key $PRIVATE_KEY

cast call 0x5fbdb2315678afecb367f032d93f642f64180aa3 'number()' //0x0000000000000000000000000000000000000000000000000000000000000001

Deploy to goerli:
forge script script/Counter.s.sol:CounterScript --fork-url $RPC_MAINNET --private-key $PRIVATE_KEY --broadcast
Contract Address: 0xbedb02266311e6b9b889c6053a30d639681b1de6

forge verify-contract 0xbedb02266311e6b9b889c6053a30d639681b1de6 Counter --watch

forge verify-contract --chain-id 1 0xbedb02266311e6b9b889c6053a30d639681b1de6 src/Counter.sol:Counter $ETHERSCAN_API
Verified contract : https://etherscan.io/address/0xbedb02266311e6b9b889c6053a30d639681b1de6

forge install transmissions11/solmate Openzeppelin/openzeppelin-contracts --no-git
This will install openzeppelin-contracts

forge script script/NFT.s.sol:NFTScript --fork-url $RPC_MAINNET --private-key $PRIVATE_KEY --broadcast

forge test --match-path test/NFT.t.sol --match-contract NFTTest --match-test "test\*"

Deploy NFT to anvil
forge script script/NFT.s.sol:NFTScript --fork-url http://localhost:8545 --private-key $PRIV_KEY //Simulation
forge script script/NFT.s.sol:NFTScript \
--fork-url http://localhost:8545 \
--private-key $PRIV_KEY --broadcast

//\***\*\*\*\*** ISSUE **\*\*\*\***\*\*\*\***\*\*\*\***/
forge create src/Counter.sol:Counter \
 --private-key=$PRIV_KEY \

This deploy script to anvil doesn't work.
forge create src/NFT.sol:NFT --rpc-url="http://localhost:8545" \
--private-key=$PRIV_KEY \
--constructor-args "SupeRareV2" "SUPV2"

OUTPUT:
(base) $ forge create src/NFT.sol:NFT --rpc-url="http://localhost:8545" \
--private-key=$PRIV_KEY \
--constructor-args "SupeRareV2" "SUPV2"

[⠆] Compiling...
No files changed, compilation skipped
Error:
Contract was not deployed
