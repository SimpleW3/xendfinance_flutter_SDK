class Asset {
  Asset(
      this.name,
      this.logo,
      this.tokenAddress,
      this.tokenAbi,
      this.protocolName,
      this.protocolAddress,
      this.protocolAbi,
      this.network,
      this.decimals,
      this.withdrawDecimals,
      this.ppfsMethod);
  final String name;
  final String logo;
  final String tokenAddress;
  final String tokenAbi;
  final String protocolName;
  final String protocolAddress;
  final String protocolAbi;
  final num network;
  final num decimals;
  final num withdrawDecimals;
  final String ppfsMethod;
}

const bUSDBSCXVault = "0x3de1Fe0039EC99773DBEE5608823FECDeFB8D9D0";
const uSDCBSCXVault = "0x50c9fBf77CBC8FF1b23a8ED61725C325bedC3C86";
const uSDTBSCXVault = "0x454d6F10B18f391adD499cE39aCD5bFCD424B601";

const bUSDBSCXAuto = "0x0f28698FD6A0771CB099482305BeEd0EeCB458D5";
const uSDCBSCXAuto = "0xa3003c67C0C8fF2280b282F0A821e95fEBA47293";
const uSDTBSCXAuto = "0x9607be08acFeB47Ea7e66b494Dd5dAb88Dda59cf";
const uSDTBNBXAuto = "0x8C709c792700d73e37D8B0A4CD3bcc995d03f084";

//matic
const uSDTMaticXAuto = "0x143afc138978Ad681f7C7571858FAAA9D426CecE";
const uSDCMaticXAuto = "0xd01a0971F03D0ddC8D621048d92A1632b2dB7356";
const aAVEMaticXAuto = "0xDD3afc5D5476FC327812B84ae2ccf66C011e6d67";
const wBTCMaticXAuto = "0x0b26E76D8617b20Ec9fe0811BE2dCbF3438cc27F";

//Token Addresses
const bUSDBSC = "0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56";
const uSDCBSC = "0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d";
const uSDTBSC = "0x55d398326f99059fF775485246999027B3197955";

const aAVEMATIC = "0xd6df932a45c0f255f85145f286ea0b292b21c90b";
const wBTCMATIC = "0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6";
const uSDTMATIC = "0xc2132D05D31c914a87C6611C10748AEb04B58e8F";
const uSDCMATIC = "0x2791bca1f2de4661ed88a30c99a7a9449aa84174";

List<Asset> layer2Assets = [
  Asset("USDC", '', uSDCBSC, 'src/abis/ER20.json', "xVault", uSDCBSCXVault,
      'src/abis/xvault/usdc.json', 56, 18, 36, 'pricePerShare'),
];

// {
// 	'name': "USDC",
// 	'logo': "",
// 	'tokenAddress': USDC_BSC,
// 	'tokenAbi': ABIS.ERC20,
// 	'protocolName': "xVault",
// 	'protocolAddress': USDC_BSC_XVault,
// 	'protocolAbi': ABIS.xvVaultUSDCV2,
// 	'network': 56,
// 	'decimals': 18,
// 	'widthdrawDecimals': 36,
// 	'ppfsMethod': 'pricePerShare',
// },
// {
// 	'name': "USDT",
// 	'logo': "",
// 	'tokenAddress': USDT_BSC,
// 	'tokenAbi': ABIS.ERC20,
// 	'protocolName': "xVault",
// 	'protocolAddress': USDT_BSC_XVault,
// 	'protocolAbi': ABIS.xvVaultUSDTV2,
// 	'network': 56,
// 	'decimals': 18,
// 	'widthdrawDecimals': 36,
// 	'ppfsMethod': 'pricePerShare',
// },
// {
// 	'name': "BUSD",
// 	'logo': "",
// 	'tokenAddress': BUSD_BSC,
// 	'tokenAbi': ABIS.ERC20,
// 	'protocolName': "xVault",
// 	'protocolAddress': BUSD_BSC_XVault,
// 	'protocolAbi': ABIS.xvVaultBUSDV2,
// 	'network': 56,
// 	'decimals': 18,
// 	'widthdrawDecimals': 36,
// 	'ppfsMethod': 'pricePerShare',
// },

// {
// 	'name': "BUSD",
// 	'logo': "",
// 	'tokenAddress': BUSD_BSC,
// 	'tokenAbi': ABIS.BUSD,
// 	'protocolName': "xAuto",
// 	'protocolAddress': BUSD_BSC_XAuto,
// 	'protocolAbi': ABIS.xvAutoBSCBUSDV2,
// 	'network': 56,
// 	'decimals': 18,
// 	'widthdrawDecimals': 36,
// 	'ppfsMethod': 'getPricePerFullShare',
// },
// {
// 	'name': "USDT",
// 	'logo': "",
// 	'tokenAddress': USDT_BSC,
// 	'tokenAbi': ABIS.ERC20,
// 	'protocolName': "xAuto",
// 	'protocolAddress': USDT_BSC_XAuto,
// 	'protocolAbi': ABIS.xvAutoBSCUSDTV2,
// 	'network': 56,
// 	'decimals': 18,
// 	'widthdrawDecimals': 36,
// 	'ppfsMethod': 'getPricePerFullShare',
// },
// {
// 	'name': "BNB",
// 	'logo': "",
// 	'tokenAddress': "",
// 	'tokenAbi': ABIS.ERC20,
// 	'protocolName': "xAuto",
// 	'protocolAddress': USDT_BNB_XAuto,
// 	'protocolAbi': ABIS.xvAutoBSCBNBV2,
// 	'network': 56,
// 	'decimals': 18,
// 	'widthdrawDecimals': 36,
// 	'ppfsMethod': 'getPricePerFullShare',
// },
// {
// 	'name': "USDC",
// 	'logo': "",
// 	'tokenAddress':USDC_BSC,
// 	'tokenAbi': ABIS.ERC20,
// 	'protocolName': "xAuto",
// 	'protocolAddress': USDC_BSC_XAuto,
// 	'protocolAbi': ABIS.xvAutoBSCUSDCV2,
// 	'network': 56,
// 	'decimals': 18,
// 	'widthdrawDecimals': 36,
// 	'ppfsMethod': 'getPricePerFullShare',
// },

// {
// 	'name': "USDC",
// 	'logo': "",
// 	'tokenAddress': USDC_MATIC,
// 	'tokenAbi': ABIS.ERC20,
// 	'protocolName': "xAuto",
// 	'protocolAddress': USDC_Matic_XAuto,
// 	'protocolAbi': ABIS.xvAutoUSDCV2Matic,
// 	'network': 137,
// 	'decimals': 18,
// 	'widthdrawDecimals': 24,
// 	'ppfsMethod': 'getPricePerFullShare',
// },
// {
// 	'name': "USDT",
// 	'logo': "",
// 	'tokenAddress': USDT_MATIC,
// 	'tokenAbi': ABIS.ERC20,
// 	'protocolName': "xAuto",
// 	'protocolAddress': USDT_Matic_XAuto,
// 	'protocolAbi': ABIS.xvAutoUSDTV2Matic,
// 	'network': 137,
// 	'decimals': 18,
// 	'widthdrawDecimals': 24,
// 	'ppfsMethod': 'getPricePerFullShare',
// },
// {
// 	'name': "AAVE",
// 	'logo': "",
// 	'tokenAddress': AAVE_MATIC,
// 	'tokenAbi': ABIS.ERC20,
// 	'protocolName': "xAuto",
// 	'protocolAddress': AAVE_Matic_XAuto,
// 	'protocolAbi': ABIS.xvAutoAAVEV2Matic,
// 	'network': 137,
// 	'decimals': 18,
// 	'widthdrawDecimals': 36,
// 	'ppfsMethod': 'getPricePerFullShare',
// },
// {
// 	'name': "WBTC",
// 	'logo': "",
// 	'tokenAddress': WBTC_MATIC,
// 	'tokenAbi': ABIS.ERC20,
// 	'protocolName': "xAuto",
// 	'protocolAddress': WBTC_Matic_XAuto,
// 	'protocolAbi': ABIS.xvAutoWBTCV2Matic,
// 	'network': 137,
// 	'decimals': 18,
// 	'widthdrawDecimals': 26,
// 	'ppfsMethod': 'getPricePerFullShare',
// },
