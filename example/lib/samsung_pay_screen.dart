import 'package:flutter/material.dart';
import 'package:tappayflutterplugin/tappayflutterplugin.dart';
import 'constant.dart';

class SamsungPayScreen extends StatefulWidget {
  @override
  _SamsungPayScreenState createState() => _SamsungPayScreenState();
}

class _SamsungPayScreenState extends State<SamsungPayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SamsungPay'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'appId: ${appId.toString()}',
            textAlign: TextAlign.center,
          ),
          Text(
            'appKey: $appKey',
            textAlign: TextAlign.center,
          ),
          Text(
            'serverType: ${serverType == TappayServerType.sandBox ? 'sandBox' : 'production'}',
            textAlign: TextAlign.center,
          ),
          Container(
            child: TextButton(
              onPressed: () {
                Tappayflutterplugin.setupTappay(
                    appId: appId,
                    appKey: appKey,
                    serverType: TappayServerType.sandBox,
                    errorMessage: (error) {
                      print(error);
                    });
              },
              child: Text('Setup Tappay'),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () async {
                bool isPrepare = await Tappayflutterplugin.prepareSamsungPay(
                    merchantName: 'Samsung pay example',
                    allowedNetworks: [
                      TPDCardType.masterCard,
                      TPDCardType.jcb,
                      TPDCardType.visa,
                    ],
                    samsungMerchantId: 'samsungMerchantId',
                    currencyCode: 'TWD',
                    samsungPayServiceId: 'samsungPayServiceId');
                print('Prepare SamsungPay: $isPrepare');
              },
              child: Text('Prepare SamsungPay'),
            ),
          )
        ],
      ),
    );
  }
}
