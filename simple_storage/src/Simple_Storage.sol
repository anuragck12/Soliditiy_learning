//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
contract SimpleStorage{
    uint256 public favouriteNo;
    struct person{
        string name;
        uint256 favNo;
    }
    person[] public listOfPersons;
    mapping (string => uint256) public nameToFav;

    function favNo(uint256 _favNo,string calldata _name) public{
       listOfPersons.push(person(_name,_favNo));
       nameToFav[_name]=_favNo;
       favouriteNo=_favNo;
    }
    function viewFavNo(string calldata _name) public view returns(uint256){
        return nameToFav[_name];
    }
    function retrive() public view returns(uint256){
        return favouriteNo;
    }
 //for using pure we can't read the variables inside the contract and ofcourse we can't modify them eg
function pureFn() public pure returns (uint256){
   return 7;
}
}