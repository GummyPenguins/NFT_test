// SPDX-License-Identifier: MIT  
pragma solidity 0.6.6;  
import"@openzeppelin/contracts/token/ERC721/ERC721.sol";  
contract SimpleCollectibleis ERC721 {  
    uint256 public tokenCounter;  
    constructor () public ERC721 ("Dogie", "DOG"){  
        tokenCounter = 0;  
}  
function createCollectible(string memory tokenURI) public returns (uint256) {  
        uint256 newItemId = tokenCounter;  
        _safeMint(msg.sender, newItemId); 
        _setTokenURI(newItemId, tokenURI);  
        tokenCountertokenCounter = tokenCounter + 1;  
return newItemId;  
} 
} 
