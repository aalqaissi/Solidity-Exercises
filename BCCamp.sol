pragma solidity ^0.4.18;

contract BCCamp {
    
// Declare variables that will store information of BlockChain mini boot camp students, this information includes name, age, 
// and if he/she is enjoying or not, every student information should be bound with his/her ethereum account address.
    
// your code here


	// delaring a struct to save student's iformation
	struct Student {
        uint age;
        string name;
        bool isEnjoying;
    }

    // delaring a mapping to bind every student information to his/her address , where the key is the address and the value is the information(struct)
    mapping (address => Student) students;

    // delaring an array to save all the addresses
    address[] public studentsAccts;




    
    function addStudent(address _address, uint _age, string name, bool _isEnjoying) public {
       // create an instant of the struct , and save it in the mapping
       Student memory student1 = Student(_age,name, _isEnjoying);
        students[_address] =student1;
      
        // add the student's address to the array of addresses
        studentsAccts.push(_address);
    }



    // build getStudents() function

    function getStudents() view public returns(address[]) {
    	// return the array that contains the addresses
        return studentsAccts;
    }
    
    

    // build getStudent(address _address) function
    
    function getStudent(address _address) view public returns (uint, string, bool) {
    	// return all the information for the student with the given address
        return (students[_address].age, students[_address].name, students[_address].isEnjoying);
    }



    // build countStudents() function
    function countStudents() view public returns (uint) {
    	// return the length of the array of addresses
        return studentsAccts.length;
    }
    
    
}

