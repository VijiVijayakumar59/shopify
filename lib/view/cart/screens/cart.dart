import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopify/res/colors.dart';
import 'package:shopify/res/components/elevated_button.dart';
import 'package:shopify/view/cart/widgets/cart_counter.dart';
import 'package:shopify/view/cart/widgets/cart_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your",
                        style: GoogleFonts.cagliostro(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: Text(
                          "Shopping Cart",
                          style: GoogleFonts.aladin(
                            textStyle: const TextStyle(
                              fontSize: 34,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Slidable(
                key: const ValueKey(0),
                // startActionPane: ActionPane(
                //   motion: const ScrollMotion(),
                //   dismissible: DismissiblePane(onDismissed: () {}),
                //   children: [
                //     SlidableAction(
                //       onPressed: doNothing,
                //       backgroundColor: const Color(0xFFFE4A49),
                //       foregroundColor: Colors.white,
                //       icon: Icons.delete,
                //       label: 'Delete',
                //     ),
                //     SlidableAction(
                //       onPressed: doNothing,
                //       backgroundColor: const Color(0xFF21B7CA),
                //       foregroundColor: Colors.white,
                //       icon: Icons.share,
                //       label: 'Share',
                //     ),
                //   ],
                // ),
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: doNothing,
                      backgroundColor: yellowColor,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                    // SlidableAction(
                    //   flex: 2,
                    //   onPressed: doNothing,
                    //   backgroundColor: const Color(0xFF7BC043),
                    //   foregroundColor: Colors.white,
                    //   icon: Icons.archive,
                    //   label: 'Archive',
                    // ),
                    // SlidableAction(
                    //   onPressed: doNothing,
                    //   backgroundColor: const Color(0xFF0392CF),
                    //   foregroundColor: Colors.white,
                    //   icon: Icons.save,
                    //   label: 'Save',
                    // ),
                  ],
                ),
                child: const CartWidget(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Center(
                child: Text(
                  "Payments",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 8,
                  left: 16,
                  right: 16,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Charges",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "#40",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "T0tal",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "#40",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Grand Total",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          "#40",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Center(
                child: ElevatedButtonWidget(
                  text: "Check Out",
                  color: yellowColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void doNothing(BuildContext context) {
    // This function does nothing.
    // You can use 'context' if needed, or just ignore it.
  }
}
