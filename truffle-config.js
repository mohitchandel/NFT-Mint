
   
const HDWalletProvider = require('@truffle/hdwallet-provider');
const infuraKey = "cc2930e3081a46baa4fa73329ae779c1";

const mnemonic = require("./secret.json").mnemonic;

module.exports = {

  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*",
    },
    rinkeby: {
      provider: () => new HDWalletProvider(mnemonic, `https://rinkeby.infura.io/v3/${infuraKey}`),
      network_id: 4,
      gas: 5500000,
      timeoutBlocks: 200,
      skipDryRun: true
    }
  },

  // Configure your compilers
  compilers: {
    solc: {
      version: "0.8.0",
      optimizer: {
        enabled: false,
        runs: 200,
      },
    },
  },

  db: {
    enabled: false,
  },
};