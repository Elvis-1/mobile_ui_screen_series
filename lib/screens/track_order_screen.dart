import 'package:flutter/material.dart';
import 'package:mobile_ui_screen_series/colors.dart';
import 'package:mobile_ui_screen_series/widgets/image_and_text_container.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.lightBlue,
        ),
        foregroundColor: AppColors.darkText,
        elevation: 0,
        title: const Text(
          'Track Order',
          style: TextStyle(color: AppColors.darkText),
        ),
        // leading: Icon(),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
// column of text and images
            Column(
              children: [
                // Column of text
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Your Order is on its way',
                      style: TextStyle(
                          color: AppColors.darkText,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Order will arrive in 3 days',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                // Container Text
                Container(
                  width: double.infinity,
                  child: const Text(
                    'Products',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.darkText,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                // Row of text
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '#90876532',
                      style: TextStyle(
                          // fontSize: 16,
                          color: AppColors.darkText,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'In progress',
                      style: TextStyle(color: AppColors.inProgressColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                // Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // column of image and text
                    ImageAndText(
                        image: 'assets/images/snicker.png',
                        text: 'Nike Sneaker'),
                    ImageAndText(
                        image: 'assets/images/apple.png', text: 'Apple Laptop'),
                    ImageAndText(
                        image: 'assets/images/lady.png', text: 'Lady Shoe')
                  ],
                ),
              ],
            ),

            // container button
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.lightBlue),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Container',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.backgroundColor, fontSize: 20),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: AppColors.backgroundColor,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
