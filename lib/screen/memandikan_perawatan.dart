import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:unity_ads_plugin/ad/unity_banner_ad.dart';

class MemandikanPerawatan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        // title: Text('Memandikan', style: TextStyle(color: Colors.grey[800],)),
        leading: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
            splashRadius: 28,
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.grey[900],
          ),
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
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: ListView(
          children: [
            
            Text('''
Hal yang harus diperhatikan sebelum memandikan Musang : 
            ''', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('''
1. Hewan dalam kondisi sehat
2. Disarankan sudah jinak 
3. Hewan dalam keadaan tenang dan tidak stress
4. Mandikan nya  pada pagi hari lebih baik
            '''),
            Text('Alat dan Bahan', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('''
1. Sampo khusus hewan
2. Handuk
            ''', textAlign: TextAlign.justify,),
            Text('Langkah', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('''
1. Keluarkan Musang dari kandang, gunakan handuk jika belum jinak

2. Buatlah Musang merasa nyaman terlebih dahulu bisa dengan cara mengusap-usap nya.

3. Berikan sampo sekujur tubuhnya lalu usap-usap ke setiap sudut nya hingga merata

4. Lalu lap dengan handuk yang lembut dan kering secara perlahan.

5. Letakkan kembali ke kandang dan biarkan dia beristihat dan mengeringkan tubuhnya.

            ''', textAlign: TextAlign.justify,),
            Text('''
Jangan terlalu sering memandikan Musang karena dia dapat membersihkan tubuh dengan sendirinya.
            ''', textAlign: TextAlign.justify,),
            
          ],
        ),
      ),
    );
  }
}