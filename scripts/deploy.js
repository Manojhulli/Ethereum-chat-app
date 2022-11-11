
const hre = require("hardhat");

async function main() {
  const echatapp = await hre.ethers.getContractFactory("echatapp");
  const chatapp = await echatapp.deploy();

  await chatapp.deployed();

  console.log(
    `Contract Address ${chatapp.address}`
  );
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
