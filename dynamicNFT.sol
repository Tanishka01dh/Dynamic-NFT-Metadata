pragma solidity ^0.8.0;

contract DynamicNFT {
    struct NFT {
        uint256 tokenId;
        uint256 creationTime;
    }

    mapping(uint256 => NFT) public nfts;
    uint256 public totalSupply;

    function mint() public {
        totalSupply++;
        nfts[totalSupply] = NFT(totalSupply, block.timestamp);
    }

    function getAttribute(uint256 tokenId) public view returns (string memory) {
        require(nfts[tokenId].tokenId != 0, "NFT does not exist");
        uint256 age = block.timestamp - nfts[tokenId].creationTime;
        
        if (age < 30 days) {
            return "Young";
        } else if (age < 90 days) {
            return "Mature";
        } else {
            return "Ancient";
        }
    }
}
