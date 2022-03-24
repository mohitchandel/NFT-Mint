// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ERC1155Mint is ERC1155, Ownable {

    address admin;

    uint8 public constant CaptainAmericaShield = 0;
    uint8 public constant HulkPunch = 1;
    uint8 public constant SpiderManSuit = 2;

    constructor() ERC1155("https://marvelNft.example/api/item/{id}.json") {

        admin = msg.sender;
        _mint(admin, CaptainAmericaShield, 12, "0x00");
        _mint(admin, HulkPunch, 10, "0x00");
        _mint(admin, SpiderManSuit, 2, "0x00");
    }

    function transferNFT(uint256 _tokenId) external payable {
        _safeTransferFrom(admin, msg.sender, _tokenId, 1, "0x00");
    }

}