// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

// @param ETH_NODE The node hash of "eth"
bytes32 constant ETH_NODE = 0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae;
// @param BASE_ETH_NODE The node hash of "darwinia.eth"
bytes32 constant BASE_ETH_NODE = 0xa00b30653aa21de4caea57dc656dcab595a7f3a936e0564ffc5dd8448b945581;
// @param REVERSE_NODE The node hash of "reverse"
bytes32 constant REVERSE_NODE = 0xa097f6721ce401e757d1223a763fef49b8b5f90bb18567ddb86fd205dff71d34;
// @param ADDR_REVERSE_NODE The node hash of "addr.reverse"
bytes32 constant ADDR_REVERSE_NODE = 0x91d1777781884d03a6757a803996e38de2a42967fb37eeaca72729271025a9e2;
// @param BASE_REVERSE_NODE The ENSIP-19 compliant base-specific reverse node hash of "80002105.reverse"
bytes32 constant BASE_REVERSE_NODE = 0x8b4150cc3554db98a2f60cb8c5a4cc48659d17a536ff9fe540be66d3307ee7a7;
// @param GRACE_PERIOD the grace period for expired names
uint256 constant GRACE_PERIOD = 90 days;
// @param BASE_ETH_NAME The dnsName of "darwinia.eth" returned by NameEncoder.dnsEncode("darwinia.eth")
bytes constant BASE_ETH_NAME = hex"0864617277696e69610365746800";
