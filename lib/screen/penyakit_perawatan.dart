import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:unity_ads_plugin/ad/unity_banner_ad.dart';

class PenyakitPerawatan extends StatelessWidget {

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
Penyakit pada Musang antara lain :
            ''', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Hairloss', style: TextStyle(fontWeight: FontWeight.bold)),
            Image.asset('assets/hairloss.jpg', height: 250,),
            Text('''
Hairloss merupakan salah satu jenis penyakit Musang yang menjadikan bulu tubuhnya rontok. Biasanya penyebab utama penyakit ini adalah karna keadaan kandang yang kotor, kurang nutrisi dan protein serta stress.

Agar Musang tidak terkena hairloss, disarankan untuk menjaga selalu keadaan kandang dan sekitar supaya tetap bersih, minimal dibersihkan 2 kali dalam 1 minggu, terutama membersihkan pounch nya.

            ''', textAlign: TextAlign.justify,),
            Text('Diare', style: TextStyle(fontWeight: FontWeight.bold)),
            Image.asset('assets/diare.jpg',height: 170,),
            Text('''
Musang yang terserang diare akan mengalami gangguan pencernaan, dan jika tidak segera diatasi akan mengakibatkan kematian. Penyebab utamanya adalah sumber makanan, atau salah memberi makanan. Disarankan jangan terlalu sering memberi makan jenis serangga, atau bubur yang terlalu cair. Mengkombinasikan makanan Musang dengan buah-buahan atau lainnya.
            ''', textAlign: TextAlign.justify,),
            Text('Katarak', style: TextStyle(fontWeight: FontWeight.bold)),
            Image.asset('assets/katarak.jpg',),
            Text('''
Katarak disebabkan karena asupan makanan yang mengandung lemak terlalu tinggi sehingga gizi pada tubuhnya tidak seimbang dan bisa juga dikarenakan terkena sinar matahari langsung. Penyakit ini ditandai dengan munculnya bintik-bintik putih di mata musang, yang kemudian akan merembet ke seluruh matanya sampai pada akhirnya mengalami kebutaan.

Pengobatan penyakit katarak sangatlah sulit di tangani. jika anda tidak segera mengobatinya maka akan semakin sulit atau bahkan katarak selamanya. Maka dari itu untuk menjaga asupan makanan dengan baik. 
            ''', textAlign: TextAlign.justify,),
            Text('Scabies', style: TextStyle(fontWeight: FontWeight.bold)),
            Image.asset('assets/scabies.jpg',),
            Text('''
Katarak disebabkan karena asupan makanan yang mengandung lemak terlalu tinggi sehingga gizi pada tubuhnya tidak seimbang dan bisa juga dikarenakan terkena sinar matahari langsung. Penyakit ini ditandai dengan munculnya bintik-bintik putih di mata musang, yang kemudian akan merembet ke seluruh matanya sampai pada akhirnya mengalami kebutaan.

Pengobatan penyakit katarak sangatlah sulit di tangani. jika anda tidak segera mengobatinya maka akan semakin sulit atau bahkan katarak selamanya. Maka dari itu untuk menjaga asupan makanan dengan baik. 
            ''', textAlign: TextAlign.justify,),

            
          ],
        ),
      ),
    );
  }
}