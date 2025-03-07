// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import "forge-std/Script.sol";

import {StablePriceOracle} from "src/L2/StablePriceOracle.sol";
import {ExponentialPremiumPriceOracle} from "src/L2/ExponentialPremiumPriceOracle.sol";

contract DeployPriceOracle is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        uint256[] memory prices = new uint256[](6);
        prices[0] = 317097919837645900;
        prices[1] = 31709791983764584;
        prices[2] = 3170979198376459;
        prices[3] = 317097919837646;
        prices[4] = 31709791983765;
        prices[5] = 3170979198377;
        uint256 premiumStart = 500000000 ether;
        uint256 totalDays = 28 days;

        StablePriceOracle oracle = new ExponentialPremiumPriceOracle(prices, premiumStart, totalDays);
        console.log("Price Oracle deployed to:");
        console.log(address(oracle));

        vm.stopBroadcast();
    }
}
