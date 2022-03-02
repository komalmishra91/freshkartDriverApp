import 'package:flutter/material.dart';
import 'package:fresh_kart_driver/helper_widgets/helper_utilities.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HelperUtility.appBar(title: "Search",color: Colors.black,context: context),
          ],
        ),
      ),
    );
  }
}
