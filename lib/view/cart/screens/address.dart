import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopify/res/colors.dart';
import 'package:shopify/res/components/elevated_button.dart';
import 'package:shopify/view/cart/widgets/address_widget.dart';
import 'package:shopify/view/login/widgets/textform_widget.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: Text(
          "Address",
          style: GoogleFonts.aladin(
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AddressTextWidget(
                text: "Contact Details",
              ),
              const TextFormWidget(
                hintText: "Full Name*",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const TextFormWidget(
                hintText: "Mobile No*",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const AddressTextWidget(
                text: "Address",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const TextFormWidget(
                hintText: "Pincode",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const TextFormWidget(
                hintText: "Address(House No,Building Street Area*)",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const TextFormWidget(
                hintText: "Locality / Town*",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.46,
                    child: const TextFormWidget(
                      hintText: "City / District*",
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.46,
                    child: const TextFormWidget(
                      hintText: "State*",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const AddressTextWidget(
                text: "Save Address As",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: ElevatedButtonWidget(
                      text: "Home",
                      bgColor: whiteColor,
                      onPress: () {},
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: ElevatedButtonWidget(
                      text: "Work",
                      bgColor: whiteColor,
                      onPress: () {},
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: ElevatedButtonWidget(
                      text: "Other",
                      bgColor: whiteColor,
                      onPress: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                child: ElevatedButtonWidget(
                  text: "Continue",
                  bgColor: mainColor,
                  onPress: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
