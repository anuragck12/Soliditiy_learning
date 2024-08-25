//SPDX-License:MIT
pragma solidity ^0.8.19;
contract SimpleStorage{
    uint256 favouriteNumber;
    function favNo(uint256 _favNo) public{
        favouriteNumber=_favNo;
    }
    function viewFavNo() publc view returns(uint256){
        return favouriteNumber;
    }
}