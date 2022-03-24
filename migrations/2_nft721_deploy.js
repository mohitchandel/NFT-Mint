const ERC721Mint = artifacts.require("ERC721Mint");

module.exports = function (deployer) {
  deployer.deploy(ERC721Mint);
};
