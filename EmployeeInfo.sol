/*
    pragma solidity ^0.5.1;

    contract Owned {
        
        address owner;
        constructor() public {
            owner = msg.sender;
        }
        
        modifier onlyOwner {
            require(msg.sender == owner);
            _;
        }
    }

    contract EmployeeInfo is Owned{
        
        struct Employee {
            uint age;
            string fname;
            string lname;
        }
        
        event EmpInfo(
            uint age,
            string fname,
            string lname
        );

        mapping(address => Employee) employees;
        address[] public empAccounts;

        function setEmployee(address _address, uint _age, string memory _fname, string memory _lname) onlyOwner public {

            Employee memory emp = employees[_address];
            emp.age = _age;
            emp.fname = _fname;
            emp.lname = _lname;
            empAccounts.push(_address) -1;
            emit EmpInfo(_age, _fname, _lname);
        }
        
        function getEmployees() view public returns (address[] memory) {
            return empAccounts;
        }
        
        function getEmployee(address ins) view public returns (uint, string memory, string memory) {
            return (employees[ins].age, employees[ins].fname, employees[ins].lname);
        }
        
        function countEmployees() view public returns (uint) {
            return empAccounts.length;
        }
        
    }
*/