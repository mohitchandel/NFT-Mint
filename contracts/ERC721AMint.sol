// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "erc721a/contracts/ERC721A.sol";

contract ERC721AMint is ERC721A {
    address admin;
    address reciever = 0x3799ff376455A3d095a21689B3D479DEBc1c49ED;

    constructor() ERC721A("GoldHat", "GLHT") {
        admin = msg.sender;
    }

    function safeMint(uint256 quantity) public {
        _safeMint(admin, quantity);
        transferNFT(0);
    }

    function transferNFT(uint256 _tokenId) internal {
        address seller = ownerOf(_tokenId);
        transferFrom(seller, reciever, _tokenId);
    }
}
