import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:masonry_grid/masonry_grid.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:testing/componen/about.dart';
import 'package:unity_ads_plugin/unity_ads.dart';


class PerawatanPage extends StatefulWidget {
  @override
  _PerawatanPageState createState() => _PerawatanPageState();
}

class _PerawatanPageState extends State<PerawatanPage> {
  @override
  void initState() {
    super.initState();
    UnityAds.init(
      gameId: AdsManager.appid,
      testMode: false,
      listener: (state, args) => print('Init Listener: $state => $args'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.grey[50],
        title: Text('Perawatan', style: TextStyle(color: Colors.grey[800],)),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
            splashRadius: 28,
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.grey[900],
          ),
        ),
      body: ListView(children: [
            UnityBannerAd(
              size: BannerSize.iabStandard,
              placementId: AdsManager.bannerAdPlacementId,
              listener: (state, args) {
                print('Banner Listener: $state => $args');
              },
            ),
            SizedBox(height: 15,),
            ListTile(
              title: 'Memandikan',
              color: Colors.blue[100],
              routes: '/memandikan',
            ),
            ListTile(
              title: 'Potong Kuku',
              color: Colors.amber[100],
              routes: '/potongkuku',
            ),
            ListTile(
              title: 'Penyakit',
              color: Colors.red[100],
              routes: '/penyakit',
            ),            
            

          ],),
          
        
    );
  }
}
class ListTile extends StatelessWidget {
  final Color color;
  final String title;
  final String routes;
  ListTile({this.color, this.title, this.routes});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        UnityAds.showVideoAd(
                    placementId: AdsManager.interAdPlacementId,
                    listener: (state, args) =>
                        print('Interstitial Video Listener: $state => $args'),
                  );
        Navigator.pushNamed(context, routes);
        
      },
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        padding: EdgeInsets.only(left: 18, right: 10),
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color,
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
          IconButton(icon: Icon(Icons.arrow_forward_ios_rounded), onPressed: (){})
        ],),
      ),
    );
  }
}