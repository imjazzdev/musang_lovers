import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testing/ads/adsManager.dart';
import 'package:testing/componen/about.dart';
import 'package:testing/componen/carousel_componen.dart';
import 'package:testing/componen/drawer_componen.dart';
import 'package:testing/componen/horizontal_list.dart';
import 'package:testing/componen/masonry_componen.dart';
import 'package:testing/componen/sliverappbar_componen.dart';
import 'package:testing/componen/topbar.dart';
import 'package:unity_ads_plugin/ad/unity_banner_ad.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: true,
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.grey[50],
        title: Text(
          "Home",
          style: TextStyle(color: Colors.grey[900]),
        ),
        centerTitle: true,

        // actions: [
        //   IconButton(

        //       onPressed: () => Scaffold.of(context).openDrawer(),
        //       icon: Icon(
        //         Icons.star_half_rounded,
        //         color: Colors.amber[400],
        //         size: 30,

        //       ))
        // ],
        leading: IconButton(
          splashRadius: 28,
          icon: Icon(Icons.menu_rounded),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
          color: Colors.grey[900],
          iconSize: 27,
        ),
      ),
      drawer: DrawerComponen(),
      body: Container(
        child: CustomScrollView(
          slivers: [
            // MySliverAppBar(),
            SliverToBoxAdapter(child: CarouselComponen()),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("Catagory",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),
            SliverToBoxAdapter(child: HorizontalList()),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("About",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),
            SliverToBoxAdapter(child: About()),
            // SliverToBoxAdapter(
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 10, right: 10),
            //     child: UnityBannerAd(
            //         size: BannerSize.leaderboard,
            //         placementId: AdsManager.bannerAdPlacementId,
            //         listener: (state, args) {
            //           print('Banner Listener: $state => $args');
            //         },
            //       ),
            //   ),
            // ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("Photos",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),
            SliverToBoxAdapter(child: MasonryComponen())
          ],
        ),
      ),
    );
  }
}
