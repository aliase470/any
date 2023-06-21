/*create a smart contract to demonstrate write a solidity program: mathematical 
function (ADD mod, MUL mod)*/
pragma solidity >=0.8.2 <0.9.0;

contract Test {
    function callAddMod () public pure returns (uint){
        return addmod (4, 5, 3);
        }
        function callMulMod () public pure returns (uint){
            return mulmod (4, 5, 3);
        }
}

/*Function Overloading*/

pragma solidity >=0.8.2 <0.9.0;

contract Overload{
    function getSum(uint num1, uint num2) public pure returns (uint){
        return (num1+num2);
        }
        function getSum(uint num1, uint num2,uint num3) public pure returns (uint){
            return (num1+num2+num3);
            }
            function getTotalSum() public pure returns (uint,uint) {
            uint x = getSum(1, 2);
            uint y = getSum(1, 2, 3);
            return (x,y);
            }
            }