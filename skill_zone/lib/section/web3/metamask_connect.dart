// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

import 'package:web3modal_flutter/web3modal_flutter.dart';

class ConnectWallet extends StatefulWidget {
  const ConnectWallet({super.key});

  @override
  State<ConnectWallet> createState() => _ConnectWalletState();
}

class _ConnectWalletState extends State<ConnectWallet> {
  late W3MService _w3mService;

  @override
  void initState() {
    super.initState();

    initilizaState();
  }

  void initilizaState() async {
    W3MChainPresets.chains.putIfAbsent(_chainId, () => _sepoliaChain);
    _w3mService = W3MService(
      projectId: 'ac36f33f346c945d6d894c66c106faf5',
      metadata: const PairingMetadata(
        name: 'Web3Modal Flutter Example',
        description: 'Web3Modal Flutter Example',
        url: 'https://www.walletconnect.com/',
        icons: ['https://walletconnect.com/walletconnect-logo.png'],
        redirect: Redirect(
          native: 'w3m://', // your own custom scheme
          universal: 'https://www.walletconnect.com',
        ),
      ),
    );

    await _w3mService.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.amber),

        // body
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            W3MConnectWalletButton(service: _w3mService),
            SizedBox(height: 16),
            W3MNetworkSelectButton(service: _w3mService),
            SizedBox(height: 16),
            W3MAccountButton(service: _w3mService)
          ],
        ));
  }
}

const _chainId = "11155111";

final _sepoliaChain = W3MChainInfo(
  chainName: 'Sepolia',
  namespace: 'eip155:$_chainId',
  chainId: _chainId,
  tokenName: 'ETH',
  rpcUrl: 'https://rpc.sepolia.org/',
  blockExplorer: W3MBlockExplorer(
    name: 'Sepolia Explorer',
    url: 'https://sepolia.etherscan.io/',
  ),
);




// Container(
//         color: Colors.pink[100],
//         // child: PDF(
//         //   swipeHorizontal: true,
//         // ).cachedFromUrl('https://ipfs.io/ipfs/QmVR4u6e3hFyFS73WvY6HXyeo1BbfrYqFgJ3wu1Ydr4oUk'),
//       ),