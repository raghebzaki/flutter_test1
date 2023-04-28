
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_test1/constant/appString.dart';
import '../constant/fontsManger.dart';
import '../constant/function.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
var width =MediaQuery.of(context).size.width;
final controller =PageController();
    return  Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container (
              width: double.infinity,
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
                             crossAxisAlignment: CrossAxisAlignment.end,
                            children:   [
                              Text(AppString.hiMagdy,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.w800,color: Colors.white,fontSize: 29)),
                              Spacer(),
                              Image.asset('assets/images/icon1.png',),
                              SizedBox(width: 5,),
                              Stack(
                                children: [

                                  Image.asset('assets/images/icon2.png',),
                                  Positioned(child: CircleAvatar(
                                    radius: 8,
                                    child: Text(3.toString(),style: TextStyle(fontSize: 12),),
                                    backgroundColor: Colors.red,
                                  ),top: 0,right: 0,),
                                ],
                              ),
                              // Icon(Icons.search,color: Colors.white,size: 29),
                              // Icon(
                              //     Icons.shopping_basket,
                              //     size: 29.0, color: Colors.white),
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
                    padding: const EdgeInsets.all( 20.0),
                    child: Image.asset('assets/images/Group.png',),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SmoothPageIndicator(
                        count: 4,
                        effect: const ExpandingDotsEffect(
                          activeDotColor: Colors.white,
                          dotColor: Color(0xff98C5E2),
                          dotHeight: 7,
                          dotWidth: 8,
                          spacing: 2,
                          //verticalOffset: 50,

                        ), controller: controller,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

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
                    cardContinar(width*0.4,"image1",225, AppString.cardText, true,),
                    SizedBox(width: 10,),
                    cardContinar(width*0.4,"image2",225, AppString.cardText, false,),
                    SizedBox(width: 10,),
                    cardContinar(width*0.4,"image3",225, AppString.cardText, false,),
                  ],
                ),
              )
            ),
            const SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: Row(
                  children: [
                    Container(
                     // height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffD34363),
                        borderRadius: BorderRadiusDirectional.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(AppString.payPrescription,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12)),
                           SizedBox(width: 10,),
                            Image.asset('assets/images/doctor1.png'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff2D8FCE),
                        borderRadius: BorderRadiusDirectional.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children:[
                            Text(AppString.medicalService,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12)),
                            SizedBox(width: 10,),
                            Image.asset('assets/images/doctor2.png'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff639E42),
                        borderRadius: BorderRadiusDirectional.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(AppString.medicalDirectory,style: TextStyle(fontFamily: FontConstants.fontFamily,fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12)),
                            SizedBox(width: 10,),
                            Image.asset('assets/images/doctor3.png'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
                      cardContinarOffer(width*0.4,"image4",225, AppString.cardText, true,true,259),
                      const SizedBox(width: 10,),
                      cardContinarOffer(width*0.4,"image5",225, AppString.cardText, false,true,259),
                      const SizedBox(width: 10,),
                      cardContinar(width*0.4,"image6",225, AppString.cardText, false,),
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
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          categoryContinar("one",AppString.cardText2),
                          SizedBox(width: 10),
                          categoryContinar("two",AppString.cardText3),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SmoothPageIndicator(
                        count: 4,
                        effect: const ExpandingDotsEffect(
                          activeDotColor: Color(0xff2D8FCE),
                          dotColor: Color(0xff98C5E2),
                          dotHeight: 7,
                          dotWidth: 8,
                          spacing: 2,
                          //verticalOffset: 50,

                        ), controller: controller,
                      ),
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
                      Image.asset('assets/images/offers1.png',fit: BoxFit.fill,),
                      const SizedBox(width: 10,),
                      Image.asset('assets/images/offers2.png',fit: BoxFit.fill,),
                    ],
                  ),
                )
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: SmoothPageIndicator(
                  count: 4,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Color(0xff2D8FCE),
                    dotColor: Color(0xff98C5E2),
                    dotHeight: 7,
                    dotWidth: 8,
                    spacing: 2,
                    //verticalOffset: 50,

                  ), controller: controller,
                ),
              ),
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
                      cardContinar(width*0.4,"image7",225, AppString.cardText, false,),
                      SizedBox(width: 10,),
                      cardContinar(width*0.4,"image8",225, AppString.cardText, false,),
                      SizedBox(width: 10,),
                      cardContinar(width*0.4,"image9",225, AppString.cardText, false),
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 75,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                  itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset('assets/images/logo${index+1}.png'),
                  );
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
                      cardContinar(width*0.4,"image7",225, AppString.cardText, false,),
                      SizedBox(width: 10,),
                      cardContinar(width*0.4,"image8",225, AppString.cardText, false,),
                      SizedBox(width: 10,),
                      cardContinar(width*0.4,"image9",225, AppString.cardText, false,),
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
                      cardContinar(width*0.4,"image7",225, AppString.cardText, false),
                      SizedBox(width: 10,),
                      cardContinar(width*0.4,"image8",225, AppString.cardText, false,),
                      SizedBox(width: 10,),
                      cardContinar(width*0.4,"image9",225, AppString.cardText, false,),
                    ],
                  ),
                )
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: const BorderRadius.all(Radius.circular(24)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30.0),),
            child: BottomNavigationBar(
              items:  <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/nav1.png',),
                  label: "home",
                //backgroundColor: Colors.grey,
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/nav2.png',),
                  label: "app",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/nav3.png',),
                  label: "favorite",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/nav4.png',),
                  label: "bookmark",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/nav5.png',),
                  label: "person",
                ),
              ],
              // currentIndex: _selectedIndex,
              // selectedItemColor: Colors.amber[800],
              // onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}

