// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Script.sol";
import {NFT} from "../src/NFT.sol";

contract NFTScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        new NFT("SupeRarev2","SUPV2");
        vm.stopBroadcast();
        // vm.broadcast();
    }
}
