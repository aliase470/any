/*write a solidity program to demonstrate array and 
its types (multidimensional, integer, 2D, character, 
inserting array)
*/

pragma solidity >=0.8.2 <0.9.0;
contract Array{
    //intger Array
    uint[] public xyz =[1,2,3,4,5];
    //character Array▸
    string[] public pqr = ["NLP","DL", "IP,HCI"];
    //2D Array
    uint[][] public mno =[[10,20,30], [1,2,3]];
    //Multidimensional array
    uint[3][2] public matrix = [
        [1, 2, 3],
        [4, 5, 6]
    ];
    //inserting Array
    uint[] public myArray;
    function insertValue(uint _value) public {
        myArray.push(_value);
        }
}
/*write a solidity program to demonstrate loop (for
loop, while, do while)
*/

pragma solidity >=0.8.2 <0.9.0;

// Creating a contract
contract For{
    // Declaring a dynamic array
    uint256[] data; // Defining a function to demonstrate
    // 'For loop' 
    function loop() public returns (uint256[] memory)
{
    for(uint i = 0; i < 5; i++)
    {
        data.push(i);
        }
        return data;
        }
}

pragma solidity >=0.8.2 <0.9.0;
// Creating a contract
contract While {
    // Declaring a dynamic array
    uint[] data;
    // Declaring state variable
    uint8 j = 0;
    // Defining a function to
    // demonstrate while loop'
    function loop(

    ) public returns (uint[] memory){
        while(j < 5) {
            j++;
            data.push(j);
            }
            return data;
    }
}

pragma solidity >=0.8.2 <0.9.0;

contract Dowhile {
    
    // Declaring a dynamic array
    uint[] data;
    // Declaring state variable
    uint8 j = 0;
    // Defining function to demonstrate
    // 'Do-While loop'
    function loop(
        
    ) public returns (uint[] memory){
    do{
        j++;
        data.push(j);
    }while(j < 5);
    return data;
}
}