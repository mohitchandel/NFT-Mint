const ERC1155Mint = artifacts.require("ERC1155Mint");

module.exports = function (deployer) {
  deployer.deploy(ERC1155Mint);
};
