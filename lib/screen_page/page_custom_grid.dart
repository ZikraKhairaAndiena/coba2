import 'package:coba2/screen_page/page_detail_grid.dart';
import 'package:flutter/material.dart';

class PageCustomeGrid extends StatefulWidget {
  const PageCustomeGrid({super.key});
  @override
  State<PageCustomeGrid> createState() => _CustomeGridState();
}
class _CustomeGridState extends State<PageCustomeGrid> {
  List<Map<String, dynamic>> listMovie = [
    {
      "judul": "Aladdin",
      "gambar": "aladdin.jpg",
      "harga": 45000,
    },{
      "judul": "Avatar",
      "gambar": "avatar.jpg",
      "harga": 35000,
    },
    {
      "judul": "Harry Potter",
      "gambar": "harry_potter.jpg",
      "harga": 50000,
    },
    {
      "judul": "Big Hero",
      "gambar": "big_hero.jpg",
      "harga": 45000,
    },
    {
        "judul": "IT",
      "gambar": "it.jpg",
      "harga": 35000,
    },
    {
      "judul": "Jumanji",
      "gambar": "jumanji.jpg",
      "harga": 45000,
    },
    {
      "judul": "Keluarga Cemara",
      "gambar": "keluarga_cemara.jpg",
      "harga": 45000,
    },
    {
      "judul": "Maleficent",
      "gambar": "maleficent.jpg",
      "harga": 35000,
    },
    {
      "judul": "Parasite",
      "gambar": "parasite.jpg",
      "harga": 50000,
    },
    {
      "judul": "Cruella",
      "gambar": "cruella.jpg",
      "harga": 45000,
    },
    {
      "judul": "Nemo",
      "gambar": "nemo.jpg",
      "harga": 45000,
    },
    {
      "judul": "Twilight",
      "gambar": "twilight.jpg",
      "harga": 45000,
    },
    {
      "judul": "Up",
      "gambar": "up.jpg",
      "harga": 45000,
    },
    {
      "judul": "La La Land",
      "gambar": "lalaland.jpg",
      "harga": 45000,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custome Grid"),
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
          itemCount: listMovie.length,
          gridDelegate: const
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>
                            PageDetailGrid(listMovie[index])));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridTile(
                    footer: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color:
                          Colors.black)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${listMovie[index]["judul"]}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text("Rp. ${listMovie[index]["harga"]}")
                        ],
                      ),
                    ),child:
                Image.asset("gambar/${listMovie[index]["gambar"]}")),
              ),
            );
          }),
    );
  }
}