import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test1/constant/appString.dart';

import 'fontsManger.dart';

Widget cardContinar( String imageName,int price,String text,bool isFavarite,bool isOffer ,int priceWithoutOffer){
  return Container(
    width: 180,
    decoration: BoxDecoration(
      border: Border.all(color: Color(0xffCCCCCC)),
      borderRadius: BorderRadiusDirectional.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Image.asset('assets/images/$imageName.png',),
          Text(text),
          Row(
            children:  [
              Text(price.toString(),style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Color(0xff2D8FCE),fontSize: 20)),

              const Text(" ج م",style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
              isOffer==true?SizedBox(width: 10,):Container(),
              isOffer==true?Text(priceWithoutOffer.toString(),style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Color(0xffA2A2A2),fontSize: 18))
                  :Container(),


            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children:  [
              ElevatedButton(onPressed: (){},style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Color(0xff08B7DB)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  )
              ), child: const Text(AppString.addToCart)),

              isFavarite==true?IconButton(icon:const Icon(Icons.favorite,color: Colors.red,),onPressed: (){},)
                  :IconButton(icon:const Icon(Icons.favorite_border),onPressed: (){},
              ),
            ],
          ),
        ],
      ),
    ),
  );
}


Widget offerContinar(int color){
  return Container(
    //width: double.infinity,
    //height: 200,
    decoration: BoxDecoration(
      color:  Color(color),
      borderRadius: BorderRadiusDirectional.circular(30),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0,right: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(AppString.offer,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16)),
              Text("50%",style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.white,fontSize: 56)),
              Text(AppString.sunblock,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.white,fontSize: 11)),
            ],
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/images/first.png'),
            Image.asset('assets/images/scond.png'),
          ],

        ),
      ],
    ),
  );
}

Widget categoryContinar(String imageName,String text){
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadiusDirectional.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Image.asset('assets/images/$imageName.png',),
          Text(text,style: const TextStyle(fontWeight: FontWeight.bold,),),
        ],
      ),
    ),
  );
}


