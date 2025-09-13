include .env
export

ARB_SEPOLIA_ARGS := --rpc-url $(RPC_URL_ARB_TESTNET) \
					 --account defaultKey \
					 --broadcast \
					 --verify \
					 --etherscan-api-key $(ETHERSCAN_API) \
					 -vvvv

ARB_MAINNET_ARGS := --rpc-url $(RPC_URL_ARB_MAINNET) \
					 --account defaultKey \
					 --broadcast \
					 --verify \
					 --etherscan-api-key $(ETHERSCAN_API) \
					 -vvvv

anvil := --rpc-url http://0.0.0.0:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --broadcast -vvvv



deploy:
	@echo "Deployando contratos"
	@forge script script/Counter.s.sol:CounterScript $(anvil)