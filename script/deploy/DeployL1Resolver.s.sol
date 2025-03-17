// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "src/L1/L1Resolver.sol";

contract DeployL1Resolver is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address deployerAddresss = vm.addr(deployerPrivateKey);
        vm.startBroadcast(deployerPrivateKey);

        /// L1 Resolver constructor data
        string memory url =
            "https://031625.xyz/gateway/darwinia/{sender}/{data}.json"; //
        address[] memory signers = new address[](1);
        signers[0] = 0xC5c1C9c3cEA2f4A68E540b18e63310310FD8af57; // DEV signer
        address owner = deployerAddresss;
        address rootResolver = 0x231b0Ee14048e9dCcD1d247744d114a4EB5E8E63; // darwinia.eth root resolver on sepolia

        L1Resolver l1 = new L1Resolver(url, signers, owner, rootResolver);
        console.log(address(l1));

        vm.stopBroadcast();
    }
}
