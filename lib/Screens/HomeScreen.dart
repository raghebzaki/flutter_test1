
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_test1/constant/appString.dart';

import '../constant/fontsManger.dart';
import '../constant/function.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container (
              width: double.infinity,
              //height: 400,

              decoration: BoxDecoration(
                color: const Color(0xff2D8FCE),
                borderRadius: BorderRadiusDirectional.circular(30),
              ),
              child: Column(
                children: [
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0,right: 40.0,left: 40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(AppString.deliveryAddress,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.w400,color: Color(0xff98C5E2),fontSize: 9)),
                          const Text(AppString.address,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.w800,color: Colors.white,fontSize: 12)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:  const [
                              Text(AppString.hiMagdy,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.w800,color: Colors.white,fontSize: 29)),
                              Spacer(),
                              Icon(Icons.search,color: Colors.white,size: 29),
                              Icon(
                                  Icons.shopping_basket,
                                  size: 29.0, color: Colors.white),
                               // Positioned(
                               //    child:  Stack(
                               //      children: <Widget>[
                               //         Icon(
                               //            Icons.shopping_basket,
                               //            size: 29.0, color: Colors.white),
                               //         Positioned(
                               //            top: 6.0,
                               //            right: 4.0,
                               //            child:  Center(
                               //              child:  Container(
                               //                decoration: BoxDecoration(
                               //                  color:  Colors.red,
                               //                  borderRadius: BorderRadiusDirectional.circular(30),
                               //                ),
                               //                child: Text("3",style: new TextStyle(color: Colors.white,),
                               //                ),
                               //              ),
                               //            )
                               //         ),
                               //      ],
                               //    )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Image.asset('assets/images/Group.png',fit:BoxFit. fitWidth,),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0,vertical: 10),
              child: Row(
                children: const [
                  Text(AppString.latestProducts,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20)),
                  Spacer(),
                  Text(AppString.showAll,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.blue,decoration: TextDecoration.underline,fontSize: 12,)),

                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    cardContinar("image1",225, AppString.cardText, true,false,225),
                    SizedBox(width: 10,),
                    cardContinar("image2",225, AppString.cardText, false,false,225),
                    SizedBox(width: 10,),
                    cardContinar("image3",225, AppString.cardText, false,false,225),
                  ],
                ),
              )
            ),
            const SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xffD34363),
                      borderRadius: BorderRadiusDirectional.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(AppString.payPrescription,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12)),
                          Image.asset('assets/images/doctor1.png'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xff2D8FCE),
                      borderRadius: BorderRadiusDirectional.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(

                        children: [
                          Text(AppString.medicalService,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12)),

                          Image.asset('assets/images/doctor2.png'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xff639E42),
                      borderRadius: BorderRadiusDirectional.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(

                        children: [
                          Text(AppString.medicalDirectory,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12)),
                          Image.asset('assets/images/doctor3.png'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0,vertical: 10),
              child: Row(
                children: const [
                  Text(AppString.healthAndBeauty,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20)),
                  Spacer(),
                  Text(AppString.showAll,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.blue,decoration: TextDecoration.underline,fontSize: 12)),

                ],
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      cardContinar("image4",225, AppString.cardText, true,true,259),
                      const SizedBox(width: 10,),
                      cardContinar("image5",225, AppString.cardText, false,true,259),
                      const SizedBox(width: 10,),
                      cardContinar("image6",225, AppString.cardText, false,false,225),
                    ],
                  ),
                )
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffFFCE00),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 34.0,vertical: 10),
                    child: Row(
                      children: const [
                        Text(AppString.medicalBlog,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20)),
                        Spacer(),
                        Text(AppString.moreArticles,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 12,decoration: TextDecoration.underline)),
                        Icon(Icons.arrow_forward,color: Colors.blue,),

                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        categoryContinar("one",AppString.cardText2),
                        SizedBox(width: 20),
                        categoryContinar("two",AppString.cardText3),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),


                ],
              ),
            ),
            const SizedBox(height: 20,),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      offerContinar(0xff08B7DB),
                      const SizedBox(width: 10,),
                      offerContinar(0xff2D8FCE),
                    ],
                  ),
                )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0,vertical: 10),
              child: Row(
                children: const [
                  Text(AppString.mostWanted,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20)),
                  Spacer(),
                  Text(AppString.showAll,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.blue,decoration: TextDecoration.underline,fontSize: 12)),

                ],
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      cardContinar("image7",225, AppString.cardText, false,false,225),
                      SizedBox(width: 10,),
                      cardContinar("image8",225, AppString.cardText, false,false,225),
                      SizedBox(width: 10,),
                      cardContinar("image9",225, AppString.cardText, false,false,225),
                    ],
                  ),
                )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0,vertical: 10),
              child: Row(
                children: const [
                  Text(AppString.category,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20)),
                  Spacer(),
                  Text(AppString.showAll,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.blue,decoration: TextDecoration.underline,fontSize: 12)),

                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                  itemBuilder: (context,index){
                  return Image.asset('assets/images/logo${index+1}.png');
              }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0,vertical: 10),
              child: Row(

                children: const [
                  Text(AppString.medicalItems,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20)),
                  Spacer(),
                  Text(AppString.showAll,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.blue,decoration: TextDecoration.underline,fontSize: 12)),

                ],
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      cardContinar("image7",225, AppString.cardText, false,false,225),
                      SizedBox(width: 10,),
                      cardContinar("image8",225, AppString.cardText, false,false,225),
                      SizedBox(width: 10,),
                      cardContinar("image9",225, AppString.cardText, false,false,225),
                    ],
                  ),
                )
            ),
            const SizedBox(height: 20,),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      cardContinar("image7",225, AppString.cardText, false,false,225),
                      SizedBox(width: 10,),
                      cardContinar("image8",225, AppString.cardText, false,false,225),
                      SizedBox(width: 10,),
                      cardContinar("image9",225, AppString.cardText, false,false,225),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}

