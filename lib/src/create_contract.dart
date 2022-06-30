import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';

DeployedContract createContract(
    String abiString, EthereumAddress protocolAddress) {
  final contract =
      DeployedContract(ContractAbi.fromJson(abiString, ''), protocolAddress);
  return contract;
}

Web3Client getW3Client(String rpcUrl) {
  final httpClient = Client();
  final web3Client = Web3Client(rpcUrl, httpClient);
  return web3Client;
}
