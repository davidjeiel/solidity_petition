pragma solidity ^0.8.0;

contract Petition{
    string[3] private names;
    string[] private extraNames;

    uint256 public nameCount;
    mapping(uint256 =>string) public status;

    constructor(){
        nameCount = 0;
    }

    function registerName(string memory _name) public {
        if(nameCount > 3){
            status[nameCount] = "undefined";
            names[nameCount]  = _name;
            nameCount++;
        }else{
            status[nameCount] = "undefined";
            extraNames.push(_name);
            nameCount++;
        }
    }

    function getName(uint256 _id) public view returns (string memory){
        if(_id < 3){
            return names[_id];
        }
    }
}