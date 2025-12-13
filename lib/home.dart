import 'package:carousel_slider/carousel_slider.dart';
import'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_app/colors.dart';
import 'package:fruit_app/model.dart';
import 'package:fruit_app/product%20item.dart';


class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  List<String>items= [
    "assets/banners/Slider 1.png" ,
    "assets/banners/Slider 2.png" ,
    "assets/banners/Slider 3.png" ,
  ];
  List<CategoryModel>category = [
    CategoryModel(
        name: "shopping" ,
        image: "assets/category/shopping.png",
    ),
    CategoryModel(
      name: "milk" ,
      image: "assets/category/milk.png",
    ),
    CategoryModel(
      name: "water" ,
      image: "assets/category/Water.png",
    ),
    CategoryModel(
      name: "landry" ,
      image: "assets/category/landry.png",
    ),
  ];

  List<ProductModel>product = [
    ProductModel(
        name: "orange",
        image: "assets/fruits/orange.png",
        price: '3.99',
        rate: '400',
        rateCount:'200'

    ),

    ProductModel(
        name: "orange",
        image: "assets/fruits/orange.png",
        price: '3.99',
        rate: '400',
        rateCount:'300'

    ),

    ProductModel(
        name: "orange",
        image: "assets/fruits/orange.png",
        price: '3.99',
        rate: '400',
        rateCount:'500'

    ),
  ];
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
            Spacer(),
            SvgPicture.asset('assets/icons/basket.svg'),
          ],
        ),
      ),
        body: Column(

        children: [
          //banner
          CarouselSlider.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
           Image.asset(items[itemIndex])
                ,options: CarouselOptions(
          height: 170,
          aspectRatio: 1,
          viewportFraction:0.8,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
          autoPlayAnimationDuration: Duration(seconds: 3),
          enlargeCenterPage: true,
            autoPlayCurve: Curves.linear,

          ), //
         ),

        // category
          SingleChildScrollView(
            scrollDirection: Axis.horizontal ,
            child: Row(
              children: List.generate(category.length,(index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        shape: BoxShape.circle
                      ),
                      width :70,
                      height:70,
                      child:Image.asset(category[index].image , width: 60,) ,
                    ),
                    SizedBox(height:1),
                    Text(category[index].name , style:TextStyle(fontWeight:FontWeight.bold ),),//
                  ],
                 ),
              );
              }),
            ),
          ),

        SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Fruits",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text("see all",style: TextStyle(fontWeight:FontWeight.bold, fontSize: 17, color:AppColors.primary)),
             ],
             ),
          ),

          SingleChildScrollView(
            scrollDirection:Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(product.length, (index){
                final item = product [index];
                return ProductItem(
                    image:item.image,
                    name :item.name,
                    rate: item.rate,
                    rateCount:item.rateCount,
                    price:item.price);
              }),
            ),
          )


          /*Card(
            color:Colors.white ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       decoration:BoxDecoration(
                         color: Colors.grey.shade100,
                           borderRadius:BorderRadius.circular(10),

                       ),

                     padding: EdgeInsets.all(10),
                       child: Image.asset("assets/fruits/orange.png", width: 146),
                     ),
                   ),
                Text(
                  'banana'
                     ,style:TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.bold

                )
                ),

                SizedBox(height: 10,),
                Row (
                    mainAxisSize: MainAxisSize.min,
                  children:[ 
                    Image.asset("assets/icons/star.png" , width: 18 ),
                    Text(
                        '4.8(287)'
                        ,style:TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,

                    )
                    ),

                  ],
                ),
                Text(
                    '\$350'
                    ,style:TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,

                )
                )
              ],
            ),
          ),*/
















        /* category
           CarouselSlider.builder(
            itemCount: category.length,
            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
             Column(
          children: [
          Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
          ),
         child:Image.asset(category[itemIndex].image , width: 40,) ,
          ),
          Text(category[itemIndex].name),//
          ],
          ), //
            options: CarouselOptions(
            height: 170,
            aspectRatio: 1,
            viewportFraction:0.3,
            autoPlay: false,
            autoPlayInterval: Duration(seconds: 2),
            autoPlayAnimationDuration: Duration(seconds: 3),
            enlargeCenterPage: false,
            autoPlayCurve: Curves.linear,

          ), //
          ), */

        ],
      ),
    );
  }
}
