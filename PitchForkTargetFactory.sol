pragma solidity ^0.4.25;

import "./goldengoat.sol";

contract PitchForkTargetFactory is GoldenGoat {

    //event for adding a new pitchfork target.
    //Includes the id of the target, the target's name and a pitchfork count which will count the pitchforks applied to the target.
    event NewTarget(uint targetId, string targetName, uint pitchForkCount);

    //data type for the pitchfork target
    //Includes the target's name and a count of pitchforks
    struct PitchForkTarget {

        string targetName;
        uint pitchForkCount;

    }

    //array of pitchfork targets
    PitchForkTarget[] public targets;

    //mappings
    mapping (address => uint) firstStrike;


    //function for creating a new pitchfork target
    //emits an event when a new target is created
    function _createTarget(string _targetName, uint _pitchForkCount) private {
        uint id = targets.push(PitchForkTarget(_targetName, _pitchForkCount)) - 1;
        emit NewTarget(id, _targetName, _pitchForkCount);

    }

    //function for goldengoat
    function goldengoat(address participant, int score) public view {
        //add 1 to goldengoat score when PitchForkTarget is created
        firstStrike[id] = msg.sender;
    }

}
