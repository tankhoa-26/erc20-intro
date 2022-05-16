pragma solidity ^0.8.0;  

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";  
import "@openzeppelin/contracts/access/Ownable.sol";  
/**  
* @title BearToken is a basic ERC20 Token  
*/  
contract GoldToken is ERC20, Ownable{  
  
  /**  
 * @dev assign totalSupply to account creating this contract */  
 constructor()  ERC20("GoldToken","GOLD"){}

 function issueToken() public onlyOwner{
        _mint(msg.sender, 1000*10**18);
 }
}