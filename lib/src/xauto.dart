import 'package:web3dart/web3dart.dart';

import './assets.dart';
import 'create_contract.dart';
import 'utils.dart';

class XAuto {
  XAuto(this.chainId, this.protocol, this.privateKey);
  var assets = layer2Assets;
  final int chainId;
  final String protocol;
  final String privateKey;

  Future<String> approve(String tokenName, num amount) async {
    Asset asset = filterToken(tokenName, chainId, protocol);
    EthereumAddress tokenAddress = EthereumAddress.fromHex(asset.tokenAddress);
    EthereumAddress protocolAddress =
        EthereumAddress.fromHex(asset.protocolAddress);
    var contract = createContract(asset.tokenAbi, tokenAddress);
    var client = getW3Client(rpcUrl(chainId));
    var approveFunc = contract.function('approve');
    EthPrivateKey cred = EthPrivateKey.fromHex(privateKey);
    BigInt finalAmount =
        EtherAmount.fromUnitAndValue(EtherUnit.ether, amount).getInEther;
    final transactionHash = await client.sendTransaction(
        cred,
        Transaction.callContract(
            contract: contract,
            function: approveFunc,
            parameters: [protocolAddress, finalAmount]),
        chainId: chainId);
    return transactionHash;
  }

  deposit() {}

  depositNative() {}

  withdraw() {}

  Future<dynamic> ppfs(String tokenName) async {
    Asset asset = filterToken(tokenName, chainId, protocol);
    final EthereumAddress contractAddress =
        EthereumAddress.fromHex(asset.protocolAddress);
    var contract = createContract(asset.protocolAbi, contractAddress);
    var client = getW3Client(rpcUrl(chainId));
    var functionToCall = contract.function(asset.ppfsMethod);
    final result =
        client.call(contract: contract, function: functionToCall, params: []);
    return result;
  }

  shareBalance() {}

  filterToken(String tokenName, num network, String protocol) {
    Iterable<Asset> filtered = assets.where((item) =>
        item.name == tokenName &&
        item.network == network &&
        item.protocolName == protocol);
    if (filtered.isEmpty) {
      return null;
    }
    return filtered.first;
  }
}
