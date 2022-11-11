// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract echatapp{
    struct user{
        string name;
        friend[] friendList;
    }

    struct friend{
        address pubkey;
        string name;
    }

    struct message{
        address sender;
        uint256 timestamp;
        string msg;
    }

    mapping(address=>user) userList;
    mapping(bytes32 =>message[]) allMessages;

    function checkUserExists(address pubkey) public view returns(bool){
        return bytes(userList[pubkey].name).length >0;
    }

    function createAccount(string calldata name) external{
        require(checkUserExists(msg.sender)== false ,"user already exists");
        require(bytes(name).length >0 ,"Username cannor be empty");

        userList [msg.sender].name = name;
    }

    function getUsername(address pubkey) external view returns(string memory){
        require(checkUserExists(pubkey),"User is not registered");
        return userList[pubkey].name;
    }

    function addFriend(address friend_key, string calldata name) external{
        require(checkUserExists(msg.sender),"Create an account first");
        require(checkUserExists(friend_key),"User not registered");
        require(msg.sender != friend_key , "User cannot add themselves as friend");
        require(checkAlreadyFriend(msg.sender,friend_key)==false, "These users are already friends");

        _addFriend(msg.sender, friend_key,name);
        _addFriend(friend_key,msg.sender, userList[msg.sender],name);

    }

    function checkAlreadyFriend(address pubkey1,address pubkey2)internal view returns(bool){
        if(userList[pubkey1].friendList.length > userList[pubkey2].friendList)

    }
}