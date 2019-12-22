pragma solidity ^0.5.0;


contract person{
    
uint public count;




struct singledetails {
    
    string name;
    string surname;
    string gender;
    uint damage;
    
}

mapping (address=>bool) public created;
mapping (address => singledetails) public sabkidetails;  

function adddetails( string memory _name,string memory _surname,string memory _gender,uint _damage) public onlyOwner{

      count++;
      sabkidetails[msg.sender]=singledetails(_name,_surname,_gender,_damage);
      created[msg.sender]=true;
  } 
  
  
  
  
    modifier onlyOwner {
        require(created[msg.sender] == false);
        _;
    }


    
}

