import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:unity_ads_plugin/ad/unity_banner_ad.dart';

class Detail extends StatelessWidget {
  final String nama;
  final String gambar;
  final String price;
  final String description;
  Detail({this.nama, this.gambar, this.price, this.description});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: UnityBannerAd(
          size: BannerSize.iabStandard,
          placementId: AdsManager.bannerAdPlacementId,
          listener: (state, args) {
            print('Banner Listener: $state => $args');
          },
        ),
      ),
      // appBar: AppBar(backgroundColor: Colors.transparent,),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height * 0.50,
                child: Hero(
                    tag: nama,
                    child: Material(
                      child: InkWell(
                        child: Image.asset(
                          gambar,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 40,
                  width: 40,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(child: Icon(Icons.arrow_back_ios_rounded)),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                ),
                // Text(genetik),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[200]),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Description",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text(
                            description,
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Price Range : ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600]),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.only(top: 15),
                            height: 40,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.amber[100]

                                // gradient: LinearGradient(
                                //   begin: Alignment.centerLeft,
                                //   end: Alignment.centerRight,
                                //   colors: [
                                //   Colors.amber[100],
                                //   Colors.amber[50],
                                //   Colors.amber[100],
                                // ])
                                ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.monetization_on_outlined,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  price,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                )
                              ],
                            )),
                        Shimmer(
                            child: Container(
                              margin: EdgeInsets.only(top: 15),
                              height: 40,
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.amber),
                            ),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [
                                  0.4,
                                  0.5,
                                  0.6
                                ],
                                colors: [
                                  Colors.amber.withOpacity(0),
                                  Colors.amber.withOpacity(0.5),
                                  Colors.amber.withOpacity(0)
                                ]))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
