## Challenge Privacy
- goal : unlock the contract, make the boolean 'locked' to true

- create a .env file with environment variables :
    - RPC_URL (url of the testnet)
    - PRIVATE_KEY (private key of your wallet)

- commands to deploy contract:
    -> local:
    forge script script/PrivacySolution.s.sol
    -> testnet :
    forge script script/PrivacySolution.s.sol --rpc-url $RPC_URL --private-key $PRIVATE_KEY --broadcast


