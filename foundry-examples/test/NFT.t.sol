// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Test.sol";
import "../src/NFT.sol";
import "../lib/forge-std/src/console2.sol";

contract NFTTest is Test {
    NFT public nft;
    address bob = address(0x1);
    address alice = address(0x2);

    function setUp() public {
        nft = new NFT("SupeRareV2","SUPEV2");
        nft.mintTo(bob);
        nft.mintTo(alice);
    }

    function testMintToken() public {
        assertEq(nft.balanceOf(bob),1);
        assertEq(nft.ownerOf(1),bob);
        assertEq(nft.ownerOf(2),alice);
    }


    function testTokenURI() public {
        assertEq(nft.tokenURI(1),"1");
        assertEq(nft.tokenURI(2),"2");

    }

    function testTransferToken() public {
        vm.prank(bob);
        nft.transferFrom(bob,alice,1);
        assertEq(nft.balanceOf(alice),2);
        assertEq(nft.ownerOf(1),alice);

    }

    
  
}
