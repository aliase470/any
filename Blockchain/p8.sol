/*create a smart contract to show the implementation Inheritance*/
pragma solidity >=0.8.2 <0.9.0;
contract A {
    string internal x;

    function setA() external {
        x = "Vanitagumde";
    }
}

contract B {
    uint internal pow;

    function setB() external {
        uint a = 2;
        uint b = 10;
        pow = a ** b;  // Changed '*' to '**' for exponentiation
    }
}

contract C is A, B {
    function getStr() external returns (string memory) {
         return x;
    }

    function getPow() external returns (uint) {
         return pow;
    }
}

contract Caller {
    C contractC = new C();

    function testInheritance() public returns (string memory, uint) {
        contractC.setA();
        contractC.setB();
        return (contractC.getStr(), contractC.getPow());
    }
}
