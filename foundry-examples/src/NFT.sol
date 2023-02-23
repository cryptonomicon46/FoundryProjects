// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import "../lib/solmate/src/tokens/ERC721.sol";
import "../lib/openzeppelin-contracts/contracts/utils/Strings.sol";

contract NFT is ERC721 {
    uint256 public currentTokenId;

    constructor(
        string memory _name,
        string memory _symbol
    ) ERC721(_name, _symbol) {}

    function mintTo(address recipient) public payable returns (bool) {
        uint256 newItemId = ++currentTokenId;
        _safeMint(recipient, newItemId);
        return true;
    }

    function burn(uint256 tokenId) public payable returns (bool) {
        require(msg.sender == ERC721.ownerOf(tokenId),"NFT:UNAUTHORIZED_TO_BURN");
        _burn(tokenId);
        return true;
    }
    function tokenURI(uint256 id) public view virtual override returns (string memory) {
        return Strings.toString(id);
    }
}
