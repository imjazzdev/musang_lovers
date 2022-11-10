import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/screen/detail_jenis.dart';

class JenisPage extends StatefulWidget {
  @override
  _JenisPageState createState() => _JenisPageState();
}

class _JenisPageState extends State<JenisPage> {
  final list_item = [
    {
      "name": "Musang Biul",
      "img": 'assets/biul.jpg',
      "price": "15 - 25"
    },
    {
      "name": "Musang Rase",
      "img": 'assets/rase.jpg',
      "price": "15 - 25"
    },
    {
      "name": "Musang Pandan",
      "img": 'assets/muspan.jpg',
      "price": "25 - 30"
    },
    {
      "name": "Musang Bulan",
      "img": 'assets/musbul.jpg',
      "price": "100 - 135"
    },
    {
      "name": "Musang Akar Jawa",
      "img": 'assets/akarjawa.jpg',
      "price": "120 - 205"
    },
    {
      "name": "Musang Akar Borneo",
      "img": 'assets/akarborneo.jpg',
      "price": "99 - 100"
    },
    {
      "name": "Musang Akar Sumatra",
      "img": 'assets/akarsumatra.jpg',
      "price": "100 - 105"
    },
    {
      "name": "Musang Zebra",
      "img": 'assets/zebra.jpg',
      "price": " - "
    },
    {
      "name": "Binturong",
      "img": 'assets/binturong.jpg',
      "price": " - "
    },
    {
      "name": "Garangan Jawa",
      "img": 'assets/garanganjawa.jpg',
      "price": "25 - 30"
    },
    {
      "name": "Albino",
      "img": 'assets/albino.jpg',
      "price": "350 - 700"
    },
    {
      "name": "Leucistic",
      "img": 'assets/lucy.jpg',
      "price": "550 - 700"
    },
    {
      "name": "Musang Lombok",
      "img": 'assets/lombok.jpg',
      "price": "70 - 105"
    },
    {
      "name": "Musang Bali",
      "img": 'assets/musbal.jpg',
      "price": "50 - 102"
    },
  ];

  final List<String> list_dec_jenis = [
    'Jenis Musang Biul ini banyak ditemukan di daerah Jawa dan Bali. Ciri khasnya yang paling bisa dibedakan adalah warna bulunya yang mempunyai corak putih di bagian kepalanya. Hidungnya berwarna coklat kemerahan sehingga perpaduan tersebut membuat musang biul menjadi hewan yang sangat lucu. Namun musang biul ini memiliki bau yang kurang sedap ',
    'Jenis Musang Rase ialah salah satu sejenis karnivora dalam suku musang. Musang ini menyebar luas di asia selatan dan tenggara. Musang rase memiliki ukuran tubuh yang sedang, pajang kepala dan tubuh 540-630mm, sedangkan ekornya 430mm. musang rase ini memiliki ekor yang belang dengan 6-9 cincin hitam dan putih',
    "Jenis Musang Pandan ini memiliki ciri bulu yang berwarna abu-abu kecoklatan pada bagian punggungnya. Pada bagian wajah, kaki dan ekor musang ini berwarna lebih gelap dari warna badannya. Ciri khas dari musang ini ialah dapat mengeluarkan aroma pandan yang berasal dari kelenjar bau dibagian bawah ekor nya",
    "Jenis musang bulan ini seringkali ditemukan di daerah Asia Timur dan Asia Tenggara, di Indonesia sendiri kamu bisa banyak menemukan di pulau dari ujung sumatera, jawa hingga ke kalimantan.",
    "Jenis Musang Akar Jawa ini cukup sulit ditemukan karena peredarannya bisa dibilang musang ini cukup langka, kalaupun ada yg dapat musang ini sudah pasti karakternya galak karena sangat susah untuk mendapatkan yang jinak/sangat jinak",
    "Jenis Musang Akar Borneo memiliki ciri fisik matanya lebih belo, moncong tidak begitu mancung bahkan pesek, warna cenderung abu-abu kecoklatan, namun ada juga yang abu-abu",
    "Jenis Musang Akar Sumatra memiliki ciri fisik moncongnya lebih mancung dan mata yang tidak terlalu belo, warna yang dominan ke abu-abuan",
    "Jenis Musang Zebra atau biasa di sebut Banded palm civet ini adalah spesies langka luwak ditemukan di hutan tropis di Asia Tenggara. Musang zebra pemberian nama ini karena mantel bergaris cokelat dan hitam yang mirip dengan zebra dan memberikan musang zebra mudah berkamuflase di hutan sekitarnya.",
    "Jenis Binturon diprediksi masih tersebar luas di hutan dataran rendah Aceh dan hutan dataran tinggi seluruh Sumatera. Hewan ini sering tertangkap kamera di kawasan hutan Batang Toru, Tapanuli Selatan, serta hutan Kerinci. Binturong disebut bisa hidup hingga 6 tahun. Satwa ini rentan punah karena habitatnya yang terus berkurang serta perburuan sebagai hewan peliharaan.",
    "Jenis Garangan Jawa memiliki ciri warna tubuh cokelat kelabu hingga cokelat kemerahan di seluruh tubuhnya. Warna tubuhnya ini bervariasi dari yang paling pucat, gelap keabu-abuan hingga warna kemerahan. Penyebaran garangan sendiri di Indonesia hanya ada di pulau jawa dan sumatera, namun lenih banyak di kepulauan jawa.",
    "Jenis Albino ini sebenarnya memiliki kecacatan pigmentasi kulit, namun karna keunikan dan kecantikan nya menjadikan musang albino idaman para owner dan harga nya yang relatif mahal. Ciri khas nya tubuh yang berwarna putih dengan bola mata merah",
    "Jenis Leucistic ini memiliki ciri tubuh yang berwarna putih dengan bola mata yang berwarna hitam. Dan memiliki shadow eyes di sekitar matanya",
    "Jenis Musang Lombok ini memiliki ciri warna hitam legam pada sekujur tubuhnya. Selain diberikan nama sebutan musang Lombok, musang ini juga sering disebut sebagai musang rinjani",
    "Jenis Musang Bali ini memiliki ciri tubuh yang berwarna coklat pudar dengan warna seperti kusam. Musang ini biasa ditemukan di hutan sekitar bali"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0.4,
        backgroundColor: Colors.grey[50],
        title: Text('Jenis',
            style: TextStyle(
              color: Colors.grey[800],
            )),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          splashRadius: 28,
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.grey[900],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: GridView.builder(
            itemCount: list_item.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return Jenis(
                jenis_nama: list_item[index]['name'],
                jenis_pic: list_item[index]['img'],
                // jenis_genetik: list_item[index]['genetik'],
                jenis_price: list_item[index]['price'],
                jenis_desc: list_dec_jenis[index],
              );
            }),
      ),
    );
  }
}

class Jenis extends StatelessWidget {
  final jenis_nama;
  final jenis_pic;
  // final jenis_genetik;
  final jenis_price;
  final jenis_desc;
  Jenis(
      {this.jenis_nama,
      this.jenis_pic,
      // this.jenis_genetik,
      this.jenis_desc,
      this.jenis_price});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.5,
      padding: EdgeInsets.all(10),
      child: Hero(
          tag: jenis_nama,
          child: Material(
            child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Detail(
                          nama: jenis_nama,
                          gambar: jenis_pic,
                          // genetik: jenis_genetik,
                          price: jenis_price,
                          description: jenis_desc,
                        ))),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          jenis_pic,
                          // height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.5,
                          fit: BoxFit.cover,
                        )),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Text(
                        jenis_nama,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                    )
                  ],
                )),
          )),
    );
  }
}


