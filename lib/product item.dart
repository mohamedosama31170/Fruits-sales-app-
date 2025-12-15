import 'package:flutter/material.dart';
class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,required this.image ,
    required this.name ,
    required this.rate ,
    required this.rateCount,
    required this.price,
    required this.onTap,

  });
  final String image;
  final String name ;
  final String rate ;
  final String rateCount;
  final String price ;
  final Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return Card(
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
              name
              ,style:TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold

          )
          ),

          SizedBox(height: 10,),
          Row (
            mainAxisSize: MainAxisSize.min,
            children:[
              Image.asset( image , width: 18 ),
              Text(
                  "$rate ($rateCount)"
                  ,style:TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,

              )
              ),

            ],
          ),
          Text(
              '\$ $price'
              ,style:TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,

          )
          )
        ],
      ),
    );
  }
}

//ProductItem(
//image:image,
//name :name,
//rate:rate,
//rateCount:rateCount,
//price:price)
