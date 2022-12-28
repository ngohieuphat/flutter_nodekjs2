import 'package:flutter/material.dart';
import 'package:flutter_nodejs2/features/account/widgets/single_product.dart';

import '../../../constants/global_variables.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  // temporary list
  List list = [
    'https://cdn.tgdd.vn/Files/2022/09/06/1465710/hinh-nen-iphone-14.jpg',
    'https://didongviet.vn/dchannel/wp-content/uploads/2022/09/cau-hinh-iphone-14-series-didongviet-02.jpg',
    'https://news.khangz.com/wp-content/uploads/2022/01/man-hinh-iPhone-13-series-1.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Your Orders',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                'See all',
                style: TextStyle(color: GlobalVariables.selectedNavBarColor),
              ),
            ),
          ],
        ),
        // display orders
        Container(
            height: 170,
            padding: const EdgeInsets.only(left: 10, top: 20, right: 0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return SingleProduct(image: list[index],);
                })),
      ],
    );
  }
}
