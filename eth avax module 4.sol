// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable {

    constructor() ERC20("Degen", "DGN") {}

        event burntoken(address account, uint amount);
    event TransferToken(address from, address to, uint amount);

        //mint
        function mint(address to, uint256 amount) public onlyOwner {
            _mint(to, amount);
    }
        //redeemshop
        function openredeemshop() external pure returns (string memory) {
        return "(1) UPGRADE CHARACTER FOR 400 DGN. (2) GET AUCTION FOR 200 DGN. (3) BUY NEW STADIUM FOR 100 DGN. (4) BUY NEW BAT FOR 50 DGN";
    }
        //redeemtoken
        function redeem(uint select) external payable {
        require(select>0 && select<5,"PLEASE TYPE 1,2,3 OR 4 ONLY");
        uint DGN;
        if (select ==4){
            DGN = 50;
            _burn(msg.sender, DGN);
            console.log("redeem successfull");
        }
        else if(select ==3){
            DGN = 100;
            _burn(msg.sender, DGN);
            console.log("redeem successfull");
        }
        else if(select ==2){
            DGN = 200;
            _burn(msg.sender, DGN);
            console.log("redeem successfull");
        }
        else {
            DGN = 400;
            _burn(msg.sender, DGN);
            console.log("redeem successfull");
        }    
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
