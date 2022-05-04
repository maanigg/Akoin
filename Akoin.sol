// SPDX-License-Identifier: Fahim AK
pragma solidity ^0.8.4;

import "@openzeppelin/contracts@4.6.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.6.0/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.6.0/access/Ownable.sol";
import "@openzeppelin/contracts@4.6.0/token/ERC20/extensions/ERC20FlashMint.sol";

/// @custom:security-contact fahimakft9@gmail.com
contract Akoin is ERC20, ERC20Burnable, Ownable, ERC20FlashMint {
    constructor() ERC20("Akoin", "AK") {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
// Head over to https://rinkeby.etherscan.io/token/0xeef17d9162b788a9a9d0c6d90922911f29ba0f80 for More details of AK
