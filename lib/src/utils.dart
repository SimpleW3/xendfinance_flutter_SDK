String rpcUrl(chainId) {
  print(chainId);
  if (chainId == 56) {
    return 'https://bsc-dataseed.binance.org/';
  }

  if (chainId == 137) {
    return 'https://polygon-rpc.com/';
  }

  return '';
}
