// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract ERC721Mint is ERC721 {

    address admin;

    constructor() ERC721("GameSword", "GMSRD") {
        admin = msg.sender;
        _mint(admin, 1);
    }
    
    function transferNFT(uint256 _tokenId) external payable {
        address seller = ownerOf(_tokenId);
        _transfer(seller, msg.sender, _tokenId);
    }
}