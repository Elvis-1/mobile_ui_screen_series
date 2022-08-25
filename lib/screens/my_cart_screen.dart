import 'package:flutter/material.dart';
import 'package:mobile_ui_screen_series/colors.dart';
import 'package:mobile_ui_screen_series/widgets/my_cart_items_constainer.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.maxFinite,
        color: AppColors.myCartBackgroundColor,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            padding: EdgeInsets.all(10),
            width: 400,
            height: 450,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                // row of text and icon
                Row(
                  children: const [
                    Expanded(
                      child: Center(
                        child: Text(
                          'My Cart',
                          style: TextStyle(
                              color: AppColors.darkText,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.close,
                      color: AppColors.lightBlue,
                      size: 30,
                    ),
                  ],
                ),

                // column of image, text and button
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyCartItemsContainer(
                        image: 'assets/images/snicker.png',
                        itemName: 'Nike Sneaker',
                        itemPrice: 'NGN250,000',
                        itemQuantity: '2'),
                    MyCartItemsContainer(
                        image: 'assets/images/apple.png',
                        itemName: 'Apple Laptop',
                        itemPrice: 'NGN350,000',
                        itemQuantity: '1'),
                    MyCartItemsContainer(
                        image: 'assets/images/lady.png',
                        itemName: 'Nike Sneaker',
                        itemPrice: 'NGN50,000',
                        itemQuantity: '1')
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                // row of text and button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // column of text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                              fontSize: 16, color: AppColors.lightBlue),
                        ),
                        Text(
                          'NGN750,000',
                          style: TextStyle(
                              color: AppColors.darkText,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    // button
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          color: AppColors.lightBlue,
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        'Checkout',
                        style: TextStyle(
                            color: AppColors.backgroundColor,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    )
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
