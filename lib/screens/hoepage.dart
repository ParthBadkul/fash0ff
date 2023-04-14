import 'package:fashoff/utils/card.dart';
import 'package:fashoff/utils/clothing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
        delegate: SliverChildListDelegate(
          [
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
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'images/3.png',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'About US',
                      style: GoogleFonts.amaranth(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      'Fash.Off uses upcycling to deliver premium quality clothing with Customizable options with Eye-Pleasing Designs',
                      style: GoogleFonts.bebasNeue(
                          fontSize: 14,
                          color: Colors.white38,
                          letterSpacing: 1.4),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
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
            const SizedBox(
              height: 25,
            ),
            // Clothings
            SizedBox(
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ClothTile(
                    imageURL: 'images/2.png',
                    text: 'Men',
                    data:
                        'Elevate your style and embrace your masculinity with unique designs crafted from your old clothing.',
                  ),
                  ClothTile(
                      imageURL: 'images/4.png',
                      text: 'Women',
                      data:
                          'Revamp your wardrobe with creative designs that accentuate your femininity, using your old clothes'),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: Divider(
                    thickness: 1.2,
                    color: Colors.white12,
                    indent: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    'Categories',
                    style: GoogleFonts.anekLatin(),
                  ),
                ),
                const Expanded(
                  child: Divider(
                    color: Colors.white12,
                    thickness: 1.2,
                    endIndent: 2,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Cards(data: 'Tee\'s'),
                Cards(data: ' Shirts'),
                Cards(data: 'Denim'),
                Cards(data: 'Accessories'),
                Cards(data: 'Sale'),
                Cards(data: 'Fash.off Home'),
              ],
            ),
          ],
        ),
      )
    ],
  ).animate().fadeIn(delay: Duration(milliseconds: 100));
}
