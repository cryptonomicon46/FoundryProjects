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
        vm.startPrank(bob);
        nft.safeTransferFrom(bob,alice,1);
        assertEq(nft.balanceOf(alice),2);
        assertEq(nft.ownerOf(1),alice);

    }

    function testGetBalance() public {
        nft.mintTo(bob);
        nft.mintTo(bob);
        nft.mintTo(bob);
        nft.mintTo(bob);

        assertEq(nft.balanceOf(bob),5);
    }

    function testOwnerCanBurnToken() public {
        console2.log(nft.balanceOf(bob));
        vm.prank(bob);
        nft.burn(1);
        assertEq(nft.balanceOf(bob),0);
        vm.expectRevert("NFT:UNAUTHORIZED_TO_BURN");
        nft.burn(2);

        vm.startPrank(alice);
        nft.burn(2);
        assertEq(nft.balanceOf(alice),0);
        emit log_named_uint("Alice's Balance is", nft.balanceOf(alice));
    }

    
  
}
