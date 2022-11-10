import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:unity_ads_plugin/ad/unity_banner_ad.dart';

class MakananPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        title: Text('Makanan', style: TextStyle(color: Colors.grey[800],)),
        leading: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
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
        margin: EdgeInsets.all(10),
        child: ListView(

          children: [
            Text('''
Makanan Musang pada umumnya antara lain : 
            '''),
            Text('1. Pisang', style: TextStyle(fontWeight: FontWeight.bold)),
            Image.asset('assets/pisang.jpg',),
            Text('''
Salah satu buah yang menjadi kegemaran musang adalah buah pisang. Teksturnya yang lembut akan memudahkan untuk dicernah di lambung musang. Untuk musang yang masih berumur 2 bulan, sebaiknya berikan makanan yang bertekstur lembut seperti pisang. Kandungan yang ada dalam pisang dapat meningkatkan kekebalan tubuh dari musang itu sendiri.
            ''', textAlign: TextAlign.justify,),
            Text('2. Pepaya', style: TextStyle(fontWeight: FontWeight.bold)),
            Image.asset('assets/pepaya.jpg',),
            Text('''
Tidak hanya mengandung Vitamin C yang cukup tinggi, buah pepaya juga mengandung protein, serat, karbohidrat, Vitamin A, Vitamin B1, Vitamin B3, Vitamin B5, Vitamin E, Vitamin K dan Kalsium.

Kandungan tersebut niscaya mampu memenuhi takaran gizi harian dan menjaga kesehatan pencernaan Musang.

Penyajiannya bisa dalam keadaan yang sudah dipotong kecil-kecil ataupun di buat bubur (dihaluskan).
            '''),
            Text('3. Wortel', style: TextStyle(fontWeight: FontWeight.bold),),
            Image.asset('assets/wortel.jpg',),
            Text('''
Satu buah wortel utuh mengandung air dan karbohidrat yang cukup banyak.

Meskipun kandungan proteinnya sedikit, wortel kaya akan vitamin, seperti Vitamin A, Vitamin B, Vitamin C, Vitamin E, serta Vitamin K dan kandungan Kalsium berkisar kurang lebih 3%.

Penyajian wortel  bisa berupa masih utuh atau potongan tipis. Namun tidak semua Musang suka dengan wortel ini.
            ''', textAlign: TextAlign.justify,),
            Text('4. Madu', style: TextStyle(fontWeight: FontWeight.bold),),
            Image.asset('assets/madu.jpg',),
            Text('''
Madu memiliki rasa manis yang berbeda dikarenakan mengandung fruktosa dan glukosa, yang kandungannya lebih baik daripada gula.

Kandungan kalori gula mampu menyerap lemak, sehingga sangat baik untuk menekan resiko kegemukan pada Musang.

Penyajian madu, bisa dicampur dengan makanan bursun, dicampukan ke minum, ataupun bisa disuapi langsung pada Musang.
            ''', textAlign: TextAlign.justify,),
            Text('5. Nasi', style: TextStyle(fontWeight: FontWeight.bold),),
            Image.asset('assets/nasi.jpg',),
            Text('''
Gizi yang ada di dalam nasi akan membantu pertumbuhan musang menjadi lebih optimal. Selain dicampur dengan kecap,  bisa juga menambahkan ayam agar si musang bisa makan dengan lebih lahap. Letakkan nasi dalam piring khusus  dan biarkan ia makan dengan sendirinya.
            ''', textAlign: TextAlign.justify,),
            Text('6. Susu', style: TextStyle(fontWeight: FontWeight.bold),),
            Image.asset('assets/susu.jpg',),
            Text('''
Sebaiknya pilih susu putih yang non laktosa untuk menghindari musang terserang diare. Susu sangat berguna untuk memenuhi nutrisi musang yang sedang tumbuh dan berkembang. Selain itu, ia juga dapat membuat musang menjadi lebih aktif serta mencegah kepincangan pada musang. Khusus untuk bayi musang berumur 0-2 bulan, berikan susu ini setiap 4 jam sekali
           
            ''', textAlign: TextAlign.justify,),
            Text('7. Ayam', style: TextStyle(fontWeight: FontWeight.bold),),
            Image.asset('assets/ayam.jpg',),
            Text('''
Ayam juga menjadi salah satu pilihan owner untuk Musang tercinta karena kandungan protein yang begitu tinggi. Penyajian nya cukup direbus kurang lebih 15menit dan disajikan dalam bentuk sudah di potong-potong atau di suwir.          
            ''', textAlign: TextAlign.justify,),
            Text('8. Telur Rebus', style: TextStyle(fontWeight: FontWeight.bold),),
            Image.asset('assets/telurrebus.jpg',),
            Text('''
Telur rebus adalah sumber protein tinggi yang sangat baik, padat akan gizi, sangat mudah dikonsumsi sehingga dapat membuat Musang cepat gemuk.

Satu butir telur rebus utuh mengandung 6 gram protein dan 9 asam amino.

Kandungan gizinya cukup lengkap seperti karbohidrat, kalsium, fosfor, Vitamin A, dan Vitamin B.

Penyajiannya cukup satu butir maupun setengah butir telur rebus yang sudah dikupas dan dipotong kecil.        
            ''', textAlign: TextAlign.justify,),
          ],
        ),
      ),
    );
  }
}
