# Soliditiy_learning
1. simple storage- just storing a number on the blockchain and retriving that number => public functions

2.for deploying the contract we need to run
first of all we need to create an local network which can be ceated from anvil
first command:
anvil
then create an another bash ,then type this command
forge create "contract name" --rpc-url <url> --interactive
--interactive for typing privatekey on compilation


above this for normal compilation
we can deploy through the script
we need to include script file in the folder script
command 
forge script "path_to_script" --rpc-url <url> --private-key <key> --broadcast
if we remove broadcast then we can get the simulation for the transaction
if we use .env
then first type
source .env
for loading the .env contents

interacting with contract from cli
for modifying on the blockchain
cast send <contract_address> "function_signature" parameter --rpc-url <rpc_url> --private-key <private_key>

for reading from the blockchain
cast call <contract_address> "function_signature" parameter --rpc-url <rpc-url>

Need to include contract call