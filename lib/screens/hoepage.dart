import 'package:fashoff/utils/clothing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu),
          actions: const [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.person_2),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          fixedColor: Colors.orangeAccent,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ''),
          ],
        ),
        // resizeToAvoidBottomInset: false,
        body: _buildScrollable(context));
  }
}

Widget _buildScrollable(BuildContext context) {
  return CustomScrollView(
    slivers: [
      SliverList(
          delegate: SliverChildListDelegate([
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Fash.off",
              style: GoogleFonts.beauRivage(
                fontSize: 38,
                letterSpacing: 1.7,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                ),
                hintText: 'Find your DRIP',
                hintStyle: GoogleFonts.bebasNeue(
                  letterSpacing: 1.8,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600))),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        // Clothings
        Container(
          height: 400,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ClothTile(
                  imageURL: 'images/1.png',
                  text: 'Women',
                  data:
                      'A collection of designs that can be crafted from your aged clothes curated just for you'),
              ClothTile(
                imageURL: 'images/2.png',
                text: 'Men',
                data:
                    'A collection of Designs that can be crafted from your aged clothes curated just for you',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 600,
                width: 40,
                // color: Colors.amber,
              )
            ],
          ),
        ),
      ]))
    ],
  );
}
