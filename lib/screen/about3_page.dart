import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:unity_ads_plugin/ad/unity_banner_ad.dart';

class About3 extends StatelessWidget {
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
            Text('''
Sebelumnya, perlu di ketahui menjinakkan musang ini akan beresiko dan menyita banyak waktu. Diperlukan kesabaran dalam proses ini. Proses menjinakan musang antara lain :              ''', textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Pemberian nama',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('''
Pemberian nama tujuan nya untuk memudahkan interaksi dengan hewan kesayangan anda dan secara tidak langsung musang akan mengingat dalam memori nya bahwa dirinya sedang dipanggil.
            ''', textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text('Handfeed dalam pemberian pakan',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(0.0),
            ),
            Text('''
Rutin lah dalam pemberian makanan. Usahakan selalu memberikan makanan dengan tangan kita sendiri(handfeed) agar musang mengenali bau kita dan akan terbiasa. Disarankan menggunakan sarung tangan(hand glove) dalam handfeed karna di khawatirkan musang yang galak akan strike pada tangan anda karna bau tubuh anda adalah bau yang di anggap asing baginya. Namun owner harus siap untuk di strike              ''', textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text('Letakan baju bekas dikandang',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text('''
Cara ini cukup ampuh bagi penulis dan mempercepat proses penjinakan. Letakanlah baju bekas dalam kadang, usahakan baju bekas yang baru saja kita gunakan karna bau nya masih menyengat dan lama kelamaan musang akan mengenali bau tubuh kita dan terbiasa.
            ''', textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text('Letakan kandang ditempat yang nyaman',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text('''
Alas kotoran kandang juga perlu diperhatikan agar SG merasa nyaman dan terhindar dari berbagai penyakit.  Pada umumnya owner memberikan pasir wangi pada alas nya mengingat kotoran SG yang cukup bau. Ada juga yang memakai serbuk kayu halus karena benda tersebut dapat dengan mudah menyerap kadar air, namun kekurangan dari serbuk kayu ini cepat lembab dan mudah berhamburan.              
            ''', textAlign: TextAlign.justify,
            ),
            Text('Memandikannya',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text('''
Rutin memandikannya adalah salah satu bentuk dari interaksi dan menunjukan kasih sayang anda kepadanya.
            ''', textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text('Perbanyak interaksi',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text('''
Rajin-rajinlah meluangkan waktu untuk interaksi dengan nya. Dengan begitu musang akan mengenali wajah dan bau kita dan akan mempercepat proses penjinakan.
            ''', textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text('Letakan kandang ditempat yang nyaman',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text('''
Alas kotoran kandang juga perlu diperhatikan agar SG merasa nyaman dan terhindar dari berbagai penyakit.  Pada umumnya owner memberikan pasir wangi pada alas nya mengingat kotoran SG yang cukup bau. Ada juga yang memakai serbuk kayu halus karena benda tersebut dapat dengan mudah menyerap kadar air, namun kekurangan dari serbuk kayu ini cepat lembab dan mudah berhamburan.              
            ''', textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
