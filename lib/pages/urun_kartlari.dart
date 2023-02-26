import 'package:flutter/material.dart';

import 'add_product_page.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFB17676),
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Urun başlığı",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          VerticalDivider(
            color: Colors.black,
            thickness: 1,
          ),
          Text("adet"),
          VerticalDivider(
            color: Colors.black,
            thickness: 1,
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: Colors.deepPurple.shade200,
                  icon: Icon(Icons.location_on_outlined),
                  content: Text(
                    "Erzakların eklenme tarihleri, ilk eklenen en üstte olacak şekilde sıralanmıştır.",
                    style: TextStyle(fontSize: 14),
                  ),
                  title: Text("Eklenme Tarihleri"),
                  actions: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "12.2.2022",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "4.2.2022",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "09.04.2022",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "11.01.2022",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
            child: Text(
              "Eklenme Tarihleri",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          VerticalDivider(
            color: Colors.black,
            thickness: 1,
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: Colors.orange.shade300,
                  icon: Icon(Icons.location_on_outlined),
                  content: Text(
                    "Bulunuduğu konum burada görüntülenecek",
                    style: TextStyle(fontSize: 12),
                  ),
                  title: Text("Konumu"),
                  // actions: [
                  //   Text("Bulunuduğu konum burada görüntülenecek"),
                  // ],
                ),
              );
            },
            child: Text(
              "Konum",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          VerticalDivider(
            color: Colors.black,
            thickness: 1,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddProduct()));
            },
            child: Text(
              "Ekle",
              style: TextStyle(
                color: Colors.green.shade900,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
