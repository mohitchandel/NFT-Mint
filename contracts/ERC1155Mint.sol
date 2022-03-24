// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ERC1155Mint is ERC1155 {
    address admin;
    address reciever = 0x3799ff376455A3d095a21689B3D479DEBc1c49ED;

    constructor() ERC1155("https://marvelNft.example/api/item/{id}.json") {
        admin = msg.sender;
    }

    function mint(
        uint256[] memory _id,
        uint256[] memory _amount,
        bytes memory data
    ) public {
        _mintBatch(admin, _id, _amount, data);
        _safeBatchTransferFrom(admin, reciever, _id, _amount, data);
    }
}
