import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/pantai-teluk-penyu.jpg"),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pantai Penyu',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Cilacap Jawa Tengah',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Color(0xffFFB800),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '5.0',
                          ),
                        ],
                      ),
                    ],
                  )),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Color(0xff2447f9),
                        size: 18,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'CALL',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff2447f9),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.navigation,
                        color: Color(0xff2447f9),
                        size: 18,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'ROUTE',
                        style: TextStyle(
                          color: Color(0xff2447f9),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Color(0xff2447f9),
                        size: 18,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'SHARE',
                        style: TextStyle(
                          color: Color(0xff2447f9),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Pantai Teluk Penyu merupakan salah obyek wisata yang paling dikenal di Cilacap,  Jawa Tengah. Selain didukung dengan panorama yang indah, Teluk Penyu juga berad di kawasan wisata utama di Cilacap, bersebelahan dengan Benteng Pendem dan Pulau Nusakambangan. Benteng Pendem sendiri merupakan bekas markas pertahanan tentara Belanda, sedangkan Pulau Nusakambangn dikenal sebagai ‘pulau penjara’. Nusakambangan bisa kita kunjungi menggunakan perahu yang disewakan para nelayan disekitar pantai tersebut.\n\nDibalik namanya, Pantai Teluk Penyu memang memiliki sejarahnya sendiri. Menurut cerita masyarakat setempat dulunya di Pantai Teluk Penyu ini banyak terdapat penyu yang hidup dan berkembang biak. Namun kini penyu-penyu tersebut berimigrasi ke Bali dan Lombok karena padatnya lalu lintas kapal-kapal milik Pertamina.\n\nKondisi Pantai Teluk Penyu yang cukup sejuk dan tidak terlalu panas menjadi alasan uatam kenapa penyu-penyu itu datang untuk bertelur. Terlebih didukung dengan tidak adanya hewan predator yang mau memakan penyu-penyu tersebut. Karena banyaknya penyu-penyu di pinggir tepi pantai maka pantai ini disebut Pantai Teluk Penyu.',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
