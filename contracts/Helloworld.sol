pragma solidity ^0.4.4;

contract Helloworld {
    string _greeting;

    function setGreeting(string greeting) {
        _greeting = greeting;
    }

    function sayHello() returns(string) {
        return _greeting;
    }
}