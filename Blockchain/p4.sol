/*write a solidity program to demonstrate the use of following operator.*/
//Comparison
pragma solidity >=0.8.2 <0.9.0;
contract SolidityTest {
    uint16 public a = 20;
    uint16 public b = 10;
    bool public eq = a == b;
    bool public noteq = a != b;
    bool public gtr = a > b;
    bool public les = a < b;
    bool public gtreq = a >= b;
    bool public leseq = a <= b;
}
// Logical
pragma solidity >=0.8.2 <0.9.0;
contract logicalOperator{
    function Logic (bool a, bool b) public view returns (bool, bool, bool){ 
        bool and = a&&b;
        bool or = a||b;
        bool not = !a;
        return (and, or, not);
    }
}
//Assignment
pragma solidity >=0.8.2 <0.9.0;
contract SolidityTest {
    // Declaring variables
    uint16 public assignment = 20;
    uint public assignment_add = 50;
    uint public assign_sub = 50;
    uint public assign_mul = 10;
    uint public assign_div = 50;
    uint public assign_mod = 32;
    // Defining function to
    // demonstrate Assignment Operator
    function getResult() public{
        assignment_add += 10;
        assign_sub -= 20;
        assign_mul *= 10;
        assign_div /= 10;
        assign_mod %= 20;
        return;
    }
}
//Ternary
pragma solidity >=0.8.2 <0.9.0;
// Creating a contract
contract SolidityTest{
    function sub(uint a, uint b) public view returns (uint){
        uint result = (a > b? a-b: b-a);
        return result;
    }
}
//Bitwise
pragma solidity >=0.8.2 <0.9.0;
contract soliditytest {
    uint16 public a = 20;
    uint16 public b = 10; 
    uint16 public and = a & b;
    uint16 public or = a | b;
    uint16 public xor = a ^ b;
    uint16 public leftshift = a << b;
    uint16 public rightshift = a >> b;
    uint16 public not = ~a ;
}