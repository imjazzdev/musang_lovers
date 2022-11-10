import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:unity_ads_plugin/ad/unity_banner_ad.dart';

class About1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.grey[900],
          ),
        ),
        backgroundColor: Colors.grey[50],
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
        color: Colors.grey[50],
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ListView(
          children: [
            // Text(
            //   'Apa Itu Sugar Glider',
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            Padding(
              padding: EdgeInsets.all(15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                  child: Image.asset(

                'assets/muspan.jpg',
                height: 170,

              )),
            ),
            SizedBox(height: 15,),
            
            Text(
              '''
Musang adalah nama umum bagi sekelompok mamalia pemangsa (bangsa karnivora) dari suku Viverridae. Hewan ini kebanyakan merupakan hewan malam (nokturnal) dan pemanjat yang baik.

Yang paling dikenal dari berbagai jenisnya adalah musang luwak (Paradoxurus hermaphroditus). Musang ini biasa hidup di dekat pemukiman, termasuk perkotaan, dan sering pula didapati memangsa ayam peliharaan di malam hari.

Belakangan ini hewan ini sedang banyak digemari menjadi hewan peliharaan yang lucu dan menggemaskan. Lantaran hewan ini bisa dijinakkan dan di latih.

Umur dari Musang juga tergolong lama bisa sekitar 10-15 tahun. Umumnya musang dapat berkembangbiak 3-4 kali dalam setahun dan dapat melahirkan anak 2-4 ekor sekali melahirkan.
            ''',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
