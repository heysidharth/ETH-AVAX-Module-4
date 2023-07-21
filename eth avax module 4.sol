// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable {

    constructor() ERC20("Degen", "DGN") {}

        event burntoken(address account, uint amount);
    event TransferToken(address from, address to, uint amount);

        //mint
        function mint(address to, uint256 amount) public onlyOwner {
            _mint(to, amount);
    }
        //redeemtoken
        function redeemTokens(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, " sufficient balance ");
        _burn(msg.sender, amount);
    }

        //transfertoken
    function transfer(address recipient,uint256 amount) public override returns (bool) {
        require(amount > 0,"Transaction must be more than zero ether.");
        _transfer(_msgSender(),recipient,amount);
        return true;
    }
        //burnfunction
        function burn(uint amount) public {
        _burn(msg.sender, amount);
        emit burntoken(msg.sender, amount);
    }
       //checkbalance
        function checkBalance(address account) public view returns (uint256){
        return balanceOf(account);
    }
}
