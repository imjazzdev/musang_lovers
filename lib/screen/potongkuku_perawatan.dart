import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:unity_ads_plugin/ad/unity_banner_ad.dart';

class PotongkukuPerawatan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        // title: Text('Memandikan', style: TextStyle(color: Colors.grey[800],)),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
            splashRadius: 28,
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
Hal yang harus diperhatikan sebelum memotong kuku Musang  : 
            ''', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('''
1. Hewan dalam kondisi sehat
2. Disarankan sudah jinak 
3. Hewan dalam keadaan tenang dan tidak stress

            '''),
            Text('Alat dan Bahan', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('''
1. Gunting kuku
2. Handuk
            ''', textAlign: TextAlign.justify,),
            Text('Langkah', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('''
1. Buatlah Musang merasa nyaman terlebih dahulu bisa dengan cara mengusap-usap nya.

2. Gendong Musang dengan handuk lalu ambil kaki nya yang ingin dipotong kuku nya.

            ''', textAlign: TextAlign.justify,),
            Image.asset('assets/panduanpotongkuku.jpg'),
            Text('''
3. Perhatikan batas potong pada kuku Musang. Pastikan potong kuku Musang tidak terlalu pendek. Bagian kuku yang dipotong jangan sampai mengenai bagian yang disebut quick. Potonglah hanya bagian yang tajam nya saja.

4. Potong kuku Musang dengan gunting kuku yang disiapkan, disarankan potong dengan gunting kuku khusus pet.

5. Lalu masukan kedalam kandang dan beri makanan kesukaan nya.  
            ''', textAlign: TextAlign.justify),
            Text('''
Potong kuku Musang dapat dilakukan dalam 2 minggu sekali.
            ''', textAlign: TextAlign.justify,),
            
          ],
        ),
      ),
    );
  }
}