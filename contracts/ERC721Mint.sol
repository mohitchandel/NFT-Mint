// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract ERC721Mint is ERC721 {
    address admin;
    address reciever = 0x3799ff376455A3d095a21689B3D479DEBc1c49ED;

    constructor() ERC721("GameSword", "GMSRD") {
        admin = msg.sender;
    }

    function safeMint(uint256 tokenId) public {
        _safeMint(admin, tokenId);
        transferNFT(tokenId);
    }

    function transferNFT(uint256 _tokenId) internal {
        address seller = ownerOf(_tokenId);
        _transfer(seller, reciever, _tokenId);
    }
}
