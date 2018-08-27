// Fix the errors in this code . 

pragma solidity ^0.4.0;


contract exercise {

   uint public balance;

   // if you want to get "name" in the same way you get "balane", you should add "public"

   string  name= "Sara" ; // there is a missing semicolon
   
   int[] public nums=[1,2,3];

   // type erroe , x and balance should have the same data type
   function setBalance(uint x) public {
       balance = x;
   }


   // in order to make this function return a value , you should add "view"
   function getBalance() public  returns (uint) {
       return balance;
   }


   // view keyword means that function will not modify state of contract, i.e. not modify variables, not emit events etc.
   function doubleBalance() public view returns (uint) {
       balance=2*balance;
       return balance;
   }

  // you can rewrite doubleBalance() function , using getBalance() function
  function doubleBalance() public view returns (uint) {
       return 2* getBalance();
   }
   
}