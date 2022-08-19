import 'package:flutter/material.dart';
import 'package:mobile_ui_screen_series/colors.dart';

class MyCartItemsContainer extends StatelessWidget {
  MyCartItemsContainer(
      {Key? key,
      required this.image,
      required this.itemName,
      required this.itemPrice,
      required this.itemQuantity})
      : super(key: key);
  String image;
  String itemName;
  String itemPrice;
  String itemQuantity;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //a  row of image and text
          Row(
            children: [
              Image(fit: BoxFit.cover, image: AssetImage(image)),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Text(
                    itemName,
                    style: TextStyle(
                        color: AppColors.lightBlue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    itemPrice,
                    style: TextStyle(
                      color: AppColors.darkText,
                      fontSize: 16,
                      //fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ],
          ),
          // button
          Container(
            padding: EdgeInsets.all(8),
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.lightBlue)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.remove,
                  size: 15,
                  color: AppColors.lightBlue,
                ),
                Text(
                  itemQuantity,
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColors.lightBlue,
                  ),
                ),
                Icon(
                  Icons.add,
                  size: 15,
                  color: AppColors.lightBlue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
