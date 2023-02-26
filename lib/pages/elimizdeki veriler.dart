import 'package:flutter/material.dart';

import 'urun_kartlari.dart';

//
// class ThingsThatWeHave extends StatefulWidget {
//   const ThingsThatWeHave({Key? key}) : super(key: key);
//
//   @override
//   State<ThingsThatWeHave> createState() => _ThingsThatWeHaveState();
// }
//
// class _ThingsThatWeHaveState extends State<ThingsThatWeHave>
//     with TickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [],
//       ),
//     );
//   }
// }

class ThingsThatWeHave extends StatelessWidget {
  const ThingsThatWeHave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: buildBottomAppBar(),
        body: TabBarView(
          children: [
            /// görüntülenecek sayfalar
            Container(
              color: Colors.deepOrange[100],
              child: SafeArea(
                child: Column(
                  children: [
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: SafeArea(
                child: Column(
                  children: [
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.yellow,
              child: SafeArea(
                child: Column(
                  children: [
                    ProductCard(),
                    ProductCard(),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              child: SafeArea(
                child: Column(
                  children: [
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BottomAppBar buildBottomAppBar() {
    return BottomAppBar(
      child: TabBar(
        tabs: [
          /// sayfa başlıkları
          Tab(
            child: Text(
              "Bakliyatlar",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Tab(
            child: Text(
              "kategori 2",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Tab(
            child: Text(
              "kategori 3",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Tab(
            child: Text(
              "kategori 4",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
