import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test1/constant/appString.dart';

import 'dart:ffi';
import 'fontsManger.dart';

Widget cardContinar(var width, String imageName,int price,String text,bool isFavarite,){
  return Container(
    width: width,
    decoration: BoxDecoration(
      border: Border.all(color: Color(0xffCCCCCC)),
      borderRadius: BorderRadiusDirectional.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Image.asset('assets/images/$imageName.png',),
          SizedBox(height: 5,),
          Text(text),

          Row(
            children:  [
              Text(price.toString(),style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Color(0xff2D8FCE),fontSize: 20)),

              const Text("  ج.م",style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.normal,color: Colors.black,fontSize: 12)),


            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children:  [
              SizedBox(
                width: width/2,
                child: ElevatedButton(onPressed: (){},style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Color(0xff08B7DB),),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    )
                ), child:  Align( alignment: Alignment.center,child: Text(AppString.addToCart,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,fontSize: 9,),))),
              ),

              isFavarite==true?IconButton(icon:const Icon(Icons.favorite,color: Colors.red,),onPressed: (){},)
                  :IconButton(icon:const Icon(Icons.favorite_border,),onPressed: (){},
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget cardContinarOffer(var width, String imageName,int price,String text,bool isFavarite,bool isOffer ,int priceWithoutOffer,){
  return Stack(
    children: [
      Positioned(child: Image.asset('assets/images/offer.png',),top: 25,right: 0,),
      Container(
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffCCCCCC)),
          borderRadius: BorderRadiusDirectional.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset('assets/images/$imageName.png',),
              SizedBox(height: 5,),
              Text(text),

              Row(
                children:  [
                  Text(price.toString(),style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Color(0xff2D8FCE),fontSize: 20)),

                  const Text("  ج.م",style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.normal,color: Colors.black,fontSize: 12)),
                  isOffer==true?SizedBox(width: 10,):Container(),
                  isOffer==true?Text(priceWithoutOffer.toString(),style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Color(0xffA2A2A2),fontSize: 18))
                      :Container(),


                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children:  [
                  SizedBox(
                    width: width/2,
                    child: ElevatedButton(onPressed: (){},style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Color(0xff08B7DB),),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                        )
                    ), child:  Align( alignment: Alignment.center,child: Text(AppString.addToCart,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,fontSize: 9,),))),
                  ),

                  isFavarite==true?IconButton(icon:const Icon(Icons.favorite,color: Colors.red,),onPressed: (){},)
                      :IconButton(icon:const Icon(Icons.favorite_border,),onPressed: (){},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget offerContinar(var imageName){
  return Container(
    child:   Image.asset('assets/images/$imageName.png',fit: BoxFit.fill,),
  );
}

Widget categoryContinar(String imageName,String text){
  return Container(
    width: 240,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadiusDirectional.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Image.asset('assets/images/$imageName.png',fit: BoxFit.fill,),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Text(text,style: const TextStyle(fontWeight: FontWeight.bold,),),
          ),
        ],
      ),
    ),
  );
}


