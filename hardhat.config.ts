import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

import dotenv from 'dotenv';
dotenv.config();

const config: HardhatUserConfig = {
  solidity: "0.8.19",
  networks: {
    arbsep: {
      url: process.env.VITE_JSON_RPC_URL!,
      accounts: [
        process.env.VITE_PRIVATE_KEY!
      ],
    },
  },
};

export default config;