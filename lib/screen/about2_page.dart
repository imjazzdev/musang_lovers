import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:unity_ads_plugin/ad/unity_banner_ad.dart';

class About2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
            color: Colors.grey[900],
            onPressed: () {
              Navigator.pop(context);
            }),
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
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        color: Colors.grey[50],
        child: ListView(
          children: [
            Text(
              'Persiapan Sebelum Adopsi',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '1. Komitmen',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Dalam memelihara Musang kita selaku owner wajib berkomitmen dalam memelihara nya. Dari mulai mampu ketersediaaan pakan yang bergizi, kandang yang luas, tempat yang nyaman, dan juga waktu yang cukup untuk bersosialisasi pada pelihaan kita.',
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text('2. Bergabung dengan komunitas',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              'Ikut dalam komunitas Musang juga sangat membantu owner dalam memelihara hewan unik tersebut. Karena kita sebagai owner bisa lebih leluasa mempertanyakan masalah yang sedang owner hadapi terkait hewan tersebut dan dijawab langsung oleh orang-orang yang sudah berpengalaman.',
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text('3. Tips memilih musang',
                style: TextStyle(fontWeight: FontWeight.bold)),
            
            Text(
              '''
Jika ingin mengadopsi Musang, sebaiknya tentukan dahulu jenis musang yang ingin diadopsi dan cari tau terlebih dahulu ciri-ciri nya secara baik dan benar.  

Carilah breeder atau peternak musang yang terpercaya. Disarankan, lebih baik datang langsung kerumah breeder atau penjual agar anda dapat langsung melihat nya sebelum diadopsi. Mintalah kepada penjual perlihatkan gigi nya apakah lengkap atau dipotong(pangkur), banyak musang yg giginya dipotong(pangkur) dengan tujuan agar jinak atau agar ketika digigit tidak sakit. Tapi musang yang giginya dipotong kebanyakan sering mengalami Abses sehingga nafsu makannya menghilang, akibatnya musang akan cepat stress dan akan berujung kematian. 

Anda dapat mengadopsi musang yang sudah berumur 2-3 bulan karena sudah dapat dikatakan mandiri. Dan jika mengadopsi musang di umur yang masih muda maka akan cepat dengan mudah bonding kepada owner-nya.
            ''',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
