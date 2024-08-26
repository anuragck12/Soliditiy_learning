//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
contract SimpleStorage{
    // struct person{
    //     string namePerson;
    //     uint256 favouriteNumber;
    // }
    mapping (string => uint) public nameToFav;

    function favNo(uint256 _favNo,string calldata _name) public{
       nameToFav[_name]=_favNo;
    }
    function viewFavNo(string calldata _name) public view returns(uint256){
        return nameToFav[_name];
    }
}