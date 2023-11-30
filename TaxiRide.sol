//SPDX-License-identifier: GPL-3.0

pragma solidity ^0.7.5;

contract TaxiRide {
    
Struct Ride {
        address passenger;
        string destination;
        uint256 timestamp;
}
    event RideRequested(uint256 rideId, address passenger, string destination, uint256 timestamp);
     function requestRide(string memory _destination) external {
        rideCount++;
        Ride storage newRide = rides[rideCount];
        newRide.passenger = msg.sender;
        newRide.destination = _destination;
        newRide.timestamp = block.timestamp;

        emit RideRequested(rideCount, msg.sender, _destination, block.timestamp);
}
uint public balanceReceived;

    function receivedMoney() public payable {
        balanceReceived += msg.value;
    }
     function getBalance() public view returns(uint) {
        return address(this).balance;
    }

     function withdrawMoneyTo(address payable _to) public {
     
            _to.transfer(getBalance());
        
    }
    event RideCompleted(uint256 rideId, uint256 timestamp);
    
    function completeRide(uint256_rideId) external{
    require(_rideId > 0 && _rideId <= ridecount, "Invalid ride ID");    
    Ride storage ride = rides [_rideId];
    require (ride.passenger == msg.sender, "unauthorised");
    require (ride.status == Ridestatus.Requested, "ride is not requested");
    
    ride.status=RideStatus.Completed;

    emit Ridecompleted(_rideId, block.timestamp);
}
    
}