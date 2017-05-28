pragma solidity ^0.4.4;

contract HelloWorld{

	//uint public balance;
	address public owner;

	//mapping
	mapping (address => uint ) balances;

	//constructor
	function HelloWorld(){
		owner=msg.sender;
		balances[owner]=1000;
	}

	//transfers value from owner to another address
	function transfer(address _to,uint _value) returns (bool success){
		if(balances[msg.sender]<_value){
			return false;
		}
		balances[msg.sender]-=_value;
		balances[_to]+=_value;
		return true;
	}

	//gets balance of address
	function getBalance(address _user) constant returns (uint _balances) {
		return balances[_user];
	}
	
	/*
	function Deposit(uint _value) returns (uint _newValue) {
		balance+=_value;
		return balance; 
	}*/
}