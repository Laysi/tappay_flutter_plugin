import 'package:flutter/material.dart';
import 'package:tappayflutterplugin/tappayflutterplugin.dart';
import 'constant.dart';

class JkoPayScreen extends StatefulWidget {
  @override
  _JkoPayScreenState createState() => _JkoPayScreenState();
}

class _JkoPayScreenState extends State<JkoPayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JkoPay'),
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
                var isJkoPayAvailable =
                    await Tappayflutterplugin.isJkoPayAvailable();
                print(isJkoPayAvailable.toString());
              },
              child: Text('isJkoPayAvailable'),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () async {
                var prime = await Tappayflutterplugin.getJkoPayPrime(universalLink: 'tappayexample://tech.cherri');
                print(prime.prime);
              },
              child: Text('getJkoPayPrime'),
            ),
          ),
        ],
      ),
    );
  }
}
