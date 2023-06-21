/*write a solidity program to find modules of addition of two number with DD and 
modules of multiplication of two number achvied by performance AND operation of DD And
MM of your Date of Birth OR operation YY of Year of Birth. */

pragma solidity >=0.8.2 <0.9.0;
contract DD_MM_YY{
    uint DD =23;
    uint MM = 4;
    uint YY =2023;
    uint YYM = 20;
    uint public num1 = DD & MM;
    uint public num2 = YY | YYM;
    uint public modofAddTwoNo = addmod (num1, num2, DD);
    uint public modofmulTwoNo = mulmod (num1, num2, MM);
}