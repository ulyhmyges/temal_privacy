// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/Privacy.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract PrivacySolution is Script {
    Privacy public privacy;
    bytes32[3] public bb;

    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        console.log("Solving Privacy...");
        if (block.chainid == 80002) {
            privacy = Privacy(0x92990fAa291281bE47ffce930135467002bfF80D);
        } else {
           
            privacy = new Privacy(bb);
            console.log(bb[2]);
        }

        console.log(privacy.locked());
        vm.stopBroadcast();
        //console.log("Privacy Solved!");
    }
}