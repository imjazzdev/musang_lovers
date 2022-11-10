import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:unity_ads_plugin/unity_ads.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
    return Container(
        margin: EdgeInsets.only(left: 10, bottom: 10, right: 10, top: 5),
        child: Column(
          children: [
            ListAbout(
              color: Colors.blue[100],
              logo: 'assets/question.svg',
              txt1: 'What is Weasel',
              txt2: 'Musang adalah nama umum bagi sekelompok mamalia pemangsa (bangsa karnivora) dari suku Viverridae.',
              routes: '/about1',
            ),
            ListAbout(
              color: Colors.red[100],
              logo: 'assets/td.svg',
              txt1: 'Sebelum Memelihara ',
              txt2: 'Persiapan sebelum adopsi',
              routes: '/about2',
            ),
            ListAbout(
              color: Colors.yellow[100],
              logo: 'assets/about3.svg',
              txt1: 'Cara Menjinakkan Musang ',
              txt2: 'Sebelumnya, perlu di ketahui menjinakkan musang ini akan beresiko dan menyita banyak waktu.',
              routes: '/about3',
            ),
          ],
        ));
  }
}

class ListAbout extends StatelessWidget {
  final Color color;
  final String logo;
  final String txt1;
  final String txt2;
  final String routes;
  ListAbout({this.color, this.logo, this.txt1, this.txt2, this.routes});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(     
      onTap: () {
        UnityAds.showVideoAd(
                    placementId: AdsManager.interAdPlacementId,
                    listener: (state, args) =>
                        print('Interstitial Video Listener: $state => $args'),
                  );  
        Navigator.pushNamed(context, routes);       
        },
      child: Container(
        padding: EdgeInsets.only(top: 5, bottom: 5, right: 10),
        margin: EdgeInsets.only(top: 5, bottom: 6),
        height: 80,
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 50,
                  width: 50,
                  child: SvgPicture.asset(logo),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(txt1, style: TextStyle(fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                      txt2,
                      overflow: TextOverflow.ellipsis,
                    ))
                  ],
                )
              ],
            ),
            Container(
              height: 20,
              width: 20,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
