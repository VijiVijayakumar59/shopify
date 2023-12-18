import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopify/res/colors.dart';
import 'package:shopify/res/style/card_row.dart';
import 'package:shopify/res/style/text_widget.dart';
import 'package:shopify/view/home/widget/animation.dart';
import 'package:shopify/view/home/widget/categories.dart';
import 'package:shopify/view/home/widget/popular_products.dart';
import 'package:shopify/view/home/widget/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 231, 217, 91),
                      Color.fromARGB(255, 233, 140, 171),
                      Colors.greenAccent,
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "Shopify",
                      style: GoogleFonts.aladin(
                        textStyle: const TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: whiteColor,
                      radius: 28,
                      child: Icon(
                        Icons.person_2_outlined,
                        size: 40,
                        color: greyColor,
                      ),
                    ),
                    const Text(
                      "Username",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const Card(
                elevation: 25,
                shadowColor: Color.fromARGB(255, 239, 239, 194),
                color: Color.fromARGB(255, 244, 234, 181),
                child: SizedBox(
                  width: 300,
                  height: 180,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CardRow(
                          iconOne: Icons.home_outlined,
                          iconTwo: Icons.shopify,
                          iconThree: Icons.person_2_outlined,
                          iconNameOne: "Home",
                          iconNameTwo: "My Orders",
                          iconNameThree: "Account",
                        ),
                        CardRow(
                          iconOne: Icons.favorite_outlined,
                          iconTwo: Icons.menu_book_outlined,
                          iconThree: Icons.my_library_books_sharp,
                          iconNameOne: "Wishlist",
                          iconNameTwo: "About Us",
                          iconNameThree: "T & C",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Card(
                elevation: 25,
                shadowColor: Color.fromARGB(255, 239, 144, 176),
                color: Color.fromARGB(255, 241, 198, 223),
                child: SizedBox(
                  width: 300,
                  height: 180,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CardRow(
                          iconOne: Icons.electrical_services_rounded,
                          iconTwo: Icons.person_2_rounded,
                          iconThree: Icons.girl_rounded,
                          iconNameOne: "Electronics",
                          iconNameTwo: "Clothing(M)",
                          iconNameThree: "Clothing(W)",
                        ),
                        CardRow(
                          iconOne: Icons.diamond_outlined,
                          iconTwo: Icons.shopping_cart_outlined,
                          iconThree: Icons.headset_mic_sharp,
                          iconNameOne: "Jewellery",
                          iconNameTwo: "Cart",
                          iconNameThree: "Support",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text(
            "Home",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const [
            Icon(
              Icons.notifications_none_rounded,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 0, left: 8, right: 8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const searchWidget(),
                Column(
                  children: [
                    const TwoTextWidget(
                      textOne: "Categories",
                      textTwo: "See all",
                    ),
                    const CategoriesWidget(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text(
                      "Explore",
                      style: GoogleFonts.aladin(
                        textStyle: const TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 38,
                        ),
                      ),
                    ),
                    CarouselSlider(
                      items: [
                        Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://www.shutterstock.com/image-photo/vintage-red-shoes-on-white-260nw-92008067.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://i.etsystatic.com/42349855/r/il/5e1ffc/4924748377/il_fullxfull.4924748377_j8h3.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: 180.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.decelerate,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        viewportFraction: 0.6,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    const TwoTextWidget(
                      textOne: "Popular Products",
                      textTwo: "See all",
                    ),
                    const PopularProductsWidget(),
                    const AnimatedBuilderExample(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
