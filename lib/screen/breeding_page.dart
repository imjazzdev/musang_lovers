import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:unity_ads_plugin/ad/unity_banner_ad.dart';

class BreedingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        title: Text('Breeding', style: TextStyle(color: Colors.grey[800],)),
        leading: IconButton(
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
Sebelum mengawinkan Musang , ada faktor-faktor yang harus di perhatikan seperti :
1. Lingkungan yang nyaman
2. Pakan yang tercukupi
3. Kandang yang cukup luas dan bersih
4. Hewan dalam keadaan sehat
5. Pastikan keduanya sudah masuk masa birahi (minimal berumur 1 tahun).
            '''),
            Text('Penjodohan', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('''
Awal mula pastikan kedua hewan tersebut berjodoh, hal ini penting karena banyak owner yang gagal breeding dikarenakan faktor tidak berjodoh. 

Menjodohkan nya bisa dengan cara mendekatkan kedua kandang jantan dan betina biasanya dalam kurun waktu 2 minggu lamanya. Tujuannya agar mereka beradaptasi dan mengenal satu sama lain. 

Proses penjodohan juga bisa saja lebih cepat, untuk itu owner diwajibkan mengobservasi hewan tersebut. Jika dilihat sudah suka sama suka (adanya pendekatan dan tidak strike) maka Musang betina sudah bisa di satukan ke dalam kandang jantan. Berjodoh nya hewan tersebut ditandai dengan keduanya tenang(tidak hissing) dan saling mengelus-elus kan tubuh nya satu sama lain tanpa penolakan.
            ''', textAlign: TextAlign.justify,),
            Text('Kawin', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('''
Jika tahap penjodohan berjalan lancar, maka hanya tinggal menunggu waktu kawin. Proses kimpoy biasanya berdurasi cukup lama bisa sampai berjam-jam. Untuk itu sediakanlah makanan bergizi agar stamina Musang tetap terjaga.
            '''),
            Text('Hamil', style: TextStyle(fontWeight: FontWeight.bold),),
            Text('''
Kehamilan musang betina ditandai sikap nya yang agresif terhadap sekitar nya. Secara fisik setelah beberapa minggu perut nya akan membesar dan puting-puting nya akan semakin menonjol. Masa kehamilan Musang kurang lebih 60hari
            ''', textAlign: TextAlign.justify,),
            Text('Melahirkan', style: TextStyle(fontWeight: FontWeight.bold),),
            Text('''
Musang dapat melahirakan 2-4 ekor anak. Namun belum tentu semua nya akan bertahan untuk hidup.
            ''', textAlign: TextAlign.justify,),
            
           
          ],
        ),
      ),
    );
  }
}
