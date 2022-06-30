import 'dart:io';
import 'package:web3dart/web3dart.dart';

import './assets.dart';
import 'create_contract.dart';
import 'utils.dart';

class XAuto {
  XAuto(this.chainId, this.protocol);
  var assets = layer2Assets;
  final num chainId;
  final String protocol;

  approve() {}

  deposit() {}

  depositNative() {}

  withdraw() {}

  Future<dynamic> ppfs(String tokenName) async {
    Asset asset = filterToken(tokenName, chainId, protocol);
    print(asset);
    String abiString = await File(asset.protocolAbi).readAsString();
    print(abiString);
    final EthereumAddress contractAddress =
        EthereumAddress.fromHex(asset.protocolAddress);
    var contract = createContract(abiString, contractAddress);
    var client = getW3Client(RPCS[chainId]!);
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
