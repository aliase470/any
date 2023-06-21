/*Create a Smart Contract for counter*/
pragma solidity >=0.8.2 <0.9.0;
contract Counter{
    int private count = 10;
    function incrementCounter() public {
        count += 1; 
    } 
    function decrementCounter() public {
        count -= 1;
        }
        function getCount() public view returns (int) {
   return count;
   }
}

/*Create a Smart Contract for Calculator*/

pragma solidity >=0.8.2 <0.9.0;

contract Calculator{
    uint256 x;
    uint256 y;
    function calu(uint256 num1,uint256 num2) public {
        x=num1;
        y=num2;
    }
    function add() public view returns (uint256){ 
        return x+y;
        } 
    function sub() public view returns (uint256){ 
        return x-y;
        } 
    function mul() public view returns (uint256){  
        return x*y;
        }
    function div() public view returns (uint256){
        return x/y;
        }
}