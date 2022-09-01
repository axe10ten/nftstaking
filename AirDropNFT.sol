// SPDX-License-Identifier: MIT LICENSE



import "https://github.com/axe10ten/nftstaking/rewardsplus.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

pragma solidity ^0.8.4;

contract AirDropNFT is Ownable  {
    
    uint256 public airDrop = 100 ether;
    WPlus rewards;

    constructor(WPlus _rewards) {
        rewards = _rewards;
    }

    function issueAirDropERC20(address[] calldata holder) public onlyOwner {
        rewards.mintAirdrop(holder, airDrop);
    }

}
