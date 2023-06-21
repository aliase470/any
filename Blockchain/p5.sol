/* write a solidity program to demonstrate to find if number is  Odd Or Even & Prime Or Composite*/
pragma solidity >=0.8.2 <0.9.0;
contract test{
    int num;
    string num_type;
     function set(int n) public{
        if(n%2==0){
            num_type='Even';
        }else{
            num_type='Odd';
        }
     }
     function get()public view return(string  memory){
        return num_type;
     }
}

pragma solidity >=0.8.2 <0.9.0;
contract PrimeNumberChecker {
    function isPrime (uint n) public pure returns (string memory){
        for (uint i = 2;i<n;i++){
            if(n % i ==0){
                 return "Not a prime";
               }
               else{
                return "prime";
                }
                }
                }
                }