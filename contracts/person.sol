pragma solidity ^0.5.0;


contract person{
    
uint public count;



struct singledetails {
    string angutha;
    string name;
    string surname;
    string gender;
    bool accept;
}


mapping (address=>bool) public created;
mapping (address => singledetails) public sabkidetails;  

function adddetails
(string memory _angutha,string memory _name,string memory _surname,string memory _gender) 
public
onlyOnce

{

      count++;
      sabkidetails[msg.sender] = singledetails(_angutha,_name,_surname,_gender,false);
      created[msg.sender] = true;
  } 



    function cansee(string memory _anguthachaap,address _personaddress) public{
        if (keccak256(abi.encodePacked(_anguthachaap)) == keccak256(abi.encodePacked(sabkidetails[_personaddress].angutha))){
    sabkidetails[_personaddress].accept = true;
       }}

 
    modifier onlyOnce {
        require(created[msg.sender] == false);
        _;
    }

}

