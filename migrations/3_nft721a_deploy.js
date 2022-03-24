const ERC721AMint = artifacts.require("ERC721AMint");

module.exports = function (deployer) {
  deployer.deploy(ERC721AMint);
};
