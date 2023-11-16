//SPDX-License-identifier: GPL-3.0

pragma solidity ^0.7.5;

contract TaxiRide {
    
     function requestRide(string memory _destination) external payable {
        require(msg.value > 0, "Ether value must be greater than 0");
}
}