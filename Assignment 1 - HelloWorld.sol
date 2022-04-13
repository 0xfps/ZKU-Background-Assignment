// SPDX-License-Identifier: MIT
pragma solidity >0.6.0;

/*
* @author: Anthony (fps) https://github.com/fps8k
* @title: HelloWorld - A simple smart contract storage.
*
* @dev:
* This smart contract takes a number and stores it on the state variable.
*
*/

contract HelloWorld
{
    
    // State variable to hold stored number.

	uint256 storedNumber;


	// {storedNumber()} takes an argument, ensures it's greater than or equal to 0, then stores it in the `storedNUmber` variable.

	function storeNumber(uint256 number) public
	{

        require(number >= 0, "Number must be an unsigned integer.");
		storedNumber = number;

	}
	
	
	
	
    // {retrieveNumber()} returns the value stored in the `storedNumber` variable.
    
	function retrieveNumber() public view returns(uint256)
	{

		return storedNumber;

	}
}