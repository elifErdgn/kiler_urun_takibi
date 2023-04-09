import 'package:flutter/material.dart';

import 'elimizdeki veriler.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.blue.shade400,
                Colors.deepPurple.shade400,
              ],
            )),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: SafeArea(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ThingsThatWeHave(),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.orange, width: 2),
                        color: Colors.white54,
                        // color: Colors.orange[100],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 0),
                            spreadRadius: 5,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      width: double.infinity,
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Text(
                        " içeriklerin listesini görmek için tıklayınız.",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.deepPurple.shade400,
          ),
          Container(
            margin: EdgeInsets.only(top: 80, left: 20),
            child: Text(
              "Kiler Ürün Takibi",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
               ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 190),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Colors.grey.shade50,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 10,
                  blurRadius: 15,
                  offset: Offset(0, 0),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 210, left: 30, right: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 10,
                  blurRadius: 15,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Kategoriler",
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple.shade400,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        child: Text(
                          "Detay",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 70,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    border: Border.all(color: Colors.teal.shade900, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Konserveler",
                      style: TextStyle(fontSize: 30, color: Colors.teal),
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    border: Border.all(color: Colors.brown.shade900, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Bakliyat",
                      style: TextStyle(fontSize: 30, color: Colors.brown),
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    border: Border.all(color: Colors.red.shade900, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Abur Cubur",
                      style: TextStyle(fontSize: 30, color: Colors.red),
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    border: Border.all(color: Colors.blue.shade900, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Domates ve Menemen",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.blue.shade800,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    border: Border.all(color: Colors.purple.shade900, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Deterjan",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.purple.shade300,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    border: Border.all(color: Colors.orange.shade900, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Temel Gıdalar",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.orange.shade800,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
