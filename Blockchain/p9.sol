/* write a solidity program to create 3 student roll no and other 3 student roll no only then
create a smart contract where it check the integer values of the roll no and perform AND
operation with Today Date and it result AND operation with today’s it result even then allow
the student else denied.*/

pragma solidity >=0.8.2 <0.9.0;
contract StudentRollNumbers {
    uint[] public rollNumbers;
    uint public currentDate;
    constructor() {
        // Initialize roll numbers
        rollNumbers = [101, 102, 103, 201, 202, 203];
        // Set current date
        currentDate = block.timestamp;
        }
        function checkAccess(uint rollNumber) public view returns (bool) {
            // Perform AND operation with current date
            uint result = rollNumber & currentDate;
            // Check if result is even
            if (result % 2 == 0) {
                return true; // Allow access
            }else {
                return false; // Deny access
            }
        }
}