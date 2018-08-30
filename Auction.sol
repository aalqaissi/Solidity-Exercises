pragma solidity ^0.4.0;
pragma experimental ABIEncoderV2;

contract Auction {
    
    string public password;
    address public ownerAccount;
    uint public duration;
    
    
    struct Bidder {
        uint maxBidPrice;
        address account;
    }
    
    Bidder public maxBidder;
    
    // mapping (address => Student) students;
    
    // struct Student {
    //     string name;
    //     uint age;
    //     bool isEnjoy;
    //     address account;
    // }
    
    function Auction(string _password, address _ownerAccount, uint _duration) public {
        password = _password;
        ownerAccount = _ownerAccount;
        duration = _duration;
    }
    
    function showMax () public view returns (Bidder) {
        return maxBidder;
    }  
    
    function getAsset() public view returns (string) {
        return password;
    }
    
    // function sellAsset () public () {
    // }
    
    // function sellAsset () public () {
    // }
    
/*
    function addStudent(Student _student) public {
        var student = students[_student.account];
        
        student.name = _student.name;
        student.age = _student.age;
        student.isEnjoy = _student.isEnjoy;
        student.account = _student.account;
        
        
        
        // student = Student(_student.name,_student.age, _student.isEnjoy, _student.account);
        // students.push(_student.account, student);
    }
    
    function getStudent(address account) public view returns (Student) {
        return students[account];
        //return students.get(account);
    }
    
    function getStudents() public view returns (Student[]) {
       //return students;
    }
    
    function countStudents() public view returns (string) {
        //return students.length();
    }
*/    
    
    
}