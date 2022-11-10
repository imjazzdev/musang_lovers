import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:unity_ads_plugin/unity_ads.dart';

class DrawerComponen extends StatefulWidget {
  @override
  _DrawerComponenState createState() => _DrawerComponenState();
}

class _DrawerComponenState extends State<DrawerComponen> {
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
    return Drawer(     
      elevation: 5.0,
      child: ListView(
        children: [
          DrawerHeader(                        
            decoration: BoxDecoration(color: Colors.grey[50]),
            child: Container(
              
              decoration: BoxDecoration(
                color: Colors.yellow[50],
                shape: BoxShape.circle
              ),
              child: Image(image: AssetImage('assets/logoml.png'))
            ),
          ),
          ListTileComp(
            img_location: 'assets/fruits.svg',
            judul: 'Makanan',
            routes: '/food',
          ),
          ListTileComp(
            img_location: 'assets/jenis.svg',
            judul: 'Jenis',
            routes: '/jenis',
          ),
          ListTileComp(
            img_location: 'assets/kangaroo.svg',
            judul: 'Breeding',
            routes: '/breeding',
          ),
          ListTileComp(
            img_location: 'assets/care.svg',
            judul: 'Perawatan',
            routes: '/perawatan',
          ),     
          ListTileComp(
            img_location: 'assets/gender.svg',
            judul: 'Gender',
            routes: '/gender',
          ),
          ListTileComp(
            img_location: 'assets/penyakit.svg',
            judul: 'Penyakit',
            routes: '/penyakit',
          ),
          Divider(height: 10,thickness: 1,),
          ListTile(
            leading: SvgPicture.asset(
              'assets/info.svg',
              height: 30,
              width: 30,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/infopage');
            },
            title: Text(
              "Tentang",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}

class ListTileComp extends StatelessWidget {
  final String routes;
  final String judul;
  final String img_location;

  ListTileComp({this.img_location, this.judul, this.routes});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        child: SvgPicture.asset(
          img_location,
          height: 33,
          width: 33,
        ),
      ),
      title: Text(
        judul,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      onTap: () {
        UnityAds.showVideoAd(
                    placementId: AdsManager.interAdPlacementId,
                    listener: (state, args) =>
                        print('Interstitial Video Listener: $state => $args'),
                  );
        Navigator.pushNamed(context, routes);
      },
    );
  }
}
