import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:unity_ads_plugin/ad/unity_banner_ad.dart';

class GenderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        title: Text('Gender',
            style: TextStyle(
              color: Colors.grey[800],
            )),
        leading: IconButton(
          splashRadius: 28,
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.grey[900],
        ),
      ),
      bottomNavigationBar: Container(
        child: UnityBannerAd(
                size: BannerSize.iabStandard,
                placementId: AdsManager.bannerAdPlacementId,
                listener: (state, args) {
                  print('Banner Listener: $state => $args');
                },
              ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            Text('''
Cara membedakan jenis kelamin Musang : 
            '''),
            Container(
              child: Image.asset('assets/kelamin.jpg'),
            ),
            SizedBox(height: 20),
            Text('Jantan', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              '''
Ciri kelamin pada musang jantan yaitu antara anus dan penis memiliki jarak yang jauh. Musang jantan juga memiliki bau yang lumayan menyengat
            ''',
              textAlign: TextAlign.justify,
            ),
            Text('Betina', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              '''
Ciri kelamin pada musang betina yaitu jarak antara anus dan vagina berdekatan
            ''',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
