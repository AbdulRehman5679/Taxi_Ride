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
    function completeRide(uint256_rideId) external{
    Ride ride = ride [rideId];
    require (ride.passenger=msg.sender, "unauthorised");
    require (ride.status=Ridestatus.Requested, "ride is not requested");

    emit Ridecompleted(_rideId, block.timestamp);
}
    
}