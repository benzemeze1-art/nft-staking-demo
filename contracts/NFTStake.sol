// contracts/NFTStake.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract NFTStake {
    mapping(address => uint256) public points;
    event Staked(address indexed user, uint256 value);

    function stake(uint256 val) external {
        points[msg.sender] += val;
        emit Staked(msg.sender, val);
    }
}
