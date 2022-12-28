import 'package:flutter/material.dart';
import 'package:flutter_nodejs2/constants/global_variables.dart';
import 'package:flutter_nodejs2/features/account/widgets/below_app_bar.dart';
import 'package:flutter_nodejs2/features/account/widgets/order.dart';
import 'package:flutter_nodejs2/features/account/widgets/top_button.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: GlobalVariables.appBarGradient,
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'assets/img/amazon_in.png',
                    width: 120,
                    height: 45,
                    // color: Colors.black,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(Icons.notifications_outlined),
                      ),
                      Icon(Icons.search_outlined),
                    ],
                  ),
                )
              ],
            ),
          )),
      body: Column(
        children: const [
          BelowAppBar(),
          SizedBox(height: 10),
          TopButton(),
          SizedBox(height: 20),
          Orders(),
        ],
      ),
    );
  }
}
