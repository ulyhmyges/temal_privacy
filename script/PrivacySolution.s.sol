// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/Privacy.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract PrivacySolution is Script {
    Privacy public privacy;
    bytes32[3] public bb = [bytes32("Chinese"), "English", "Math"];

    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        console.log("Solving Privacy...");
        if (block.chainid == 80002) {
            privacy = Privacy(0x92990fAa291281bE47ffce930135467002bfF80D);
        } else {
            privacy = new Privacy(bb);
        }

        bytes32 value = vm.load(address(privacy), bytes32(uint256(5)));
        console.logBytes32(value);

        privacy.unlock(bytes16(value));
        
        if(!privacy.locked()){
            console.log("Privacy Solved!");
        }
      
        vm.stopBroadcast();
    }
}