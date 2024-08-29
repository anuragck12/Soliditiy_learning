//SPDX-License-Identifier:MIT
pragma solidity ^0.8.19;
import {Script} from "../lib/forge-std/src/Script.sol";
import {SimpleStorage} from "../src/Simple_Storage.sol";
contract DeploySimpleStorage is Script {
   function run() external returns(SimpleStorage){
    vm.startBroadcast();
    SimpleStorage _simplestorage=new SimpleStorage();
    vm.stopBroadcast();
    return _simplestorage;
   }
}

