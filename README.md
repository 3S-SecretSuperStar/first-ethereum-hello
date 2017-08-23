# Hello World Truffle Tutorial
1. install dependencies
```javascript
npm i -g ethereumjs-testrpc
npm i -g truffle
```

2. init truffle project
```javascript
truffle init
```

3. write solidity `Helloworld.sol` contract
```javascript
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
```
4. write `2_deploy_contracts.js` migration script
```javascript
var Helloworld = artifacts.require("./Helloworld.sol");

module.exports = function(deployer) {
  deployer.deploy(Helloworld);
};
```

5. open up new terminal and run testrpc
```javascript
testrpc
```

6. build solidity smart contract
```javascript
truffle build
```

7. migrate `Helloworld` smart contract
```javascript
truffle migrate
```

8. test smart contract on truffle console
```javascript
truffle console
/* console opens */
var hw;
Helloworld.deployed().then(function(d){hw = d;});
hw.sayHello.call() // ''
hw.setGreeting("hi github!");
hw.sayHello.call() // 'hi github!'
```

9. change `sayHello` on `Helloworld` contract
```javascript
function sayHello() returns(string) {
    return "im changed!";
}
```

10. compile and migrate updated contract.. then run console
```javascript
truffle compile
truffle migrate
/* deployed contract */
truffle console
```

11. run sayHello

Notice sayHello output did not change. That is because contracts are cannot be changed once deployed to the blockchain.

```javascript
var hw;
Helloworld.deployed().then(function(d){hw = d;});
hw.sayHello.call() // 'hi github!'
```


