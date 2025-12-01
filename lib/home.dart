import'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:SizedBox.shrink()
          ,leadingWidth:0,
        title: Row(
             children: [
            SvgPicture.asset('assets/icons/moto.svg'),
            SizedBox(width:10),
            Text("61 hopper street .."),
            SizedBox(width: 10),
            Icon(Icons.arrow_forward_ios),
            SvgPicture.asset('assets/icons/basket.svg'),
               Spacer(),


          ],
        ),
      ),
      body: Column(
        children: [
        ],
      ),
    );
  }
}
