import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mymed/View/addslip.dart';





class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.blueGrey),
      body:SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
               padding: const EdgeInsets.only(top:50.0,left: 25.0,right: 25.0),
               child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Welcome My_MedList',
                  style: TextStyle(
                    color: Colors.blue.shade600,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                  Icon(Icons.add_alert_rounded),
                ],
            ),
             ),
             Padding(
               padding: const EdgeInsets.only(left:25.0,top: 12.0),
               child: Text('How can we help you today?',
               style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
               ),
             ),
           Container(height: 20.0,),
           SizedBox(
             width: MediaQuery.of(context).size.width,
             child: CarouselSlider(
                options: CarouselOptions(
                  height: 125.0,
                   autoPlay: false,
                   enlargeCenterPage: true,
                   viewportFraction: 1.0,
                   aspectRatio: 2.0,
                   initialPage: 2,
                   
                  ),
                items: [1,2].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                     if(i==1){
                        return Container(
                        width: 400.0,
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.green.shade50,
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:25.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('You dont have to ',
                                  style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                                  Container(height: 10.0,),
                                  Text('be thirsty before taking water ',style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:10.0),
                              child: Image.network('https://image.flaticon.com/icons/png/512/1899/1899919.png',
                              height: 110,),
                            ),

                          ],
                        )
                      );
                     }
                     else{
                        return Container(
                        width: 400.0,
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:25.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('You dont have to ',
                                  style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                                  Container(height: 10.0,),
                                  Text('be thirsty before taking water ',style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:10.0),
                              child: Image.network('https://image.flaticon.com/icons/png/512/1899/1899919.png',
                              height: 110,),
                            ),

                          ],
                        )
                      );
                     }
                    },
                    );
                     }).toList(),

                ),
           ),
              homebutton(),
              
          ]
        ),
      )
    );
  }

  homebutton() {
    return Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:20.0,right:20.0, top: 25.0),
                          child: GestureDetector(
                            onTap: (){
                              Get.to(AddSlipPage());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(12.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(0, 1), // changes position of shadow
                                  ),],
                              ),
                              height: 160,
                              width: 140,
                                child: Padding(
                                padding: const EdgeInsets.only(top:28.0),
                                child: Column(
                                  children: [
                                    Image.asset('assets/44.png',
                                    color: Colors.red.shade900,
                                    height: 80.0,),
                                    SizedBox(height:10.0),
                                    Text('ADD SLIP',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:18.0
                                    ),
                                  ),
                                ],
                              ),
                            ),
                              
                                                  ),
                          ),
                      ),
//Second Button
                        Padding(
                          padding: const EdgeInsets.only(left:20.0,right:20.0, top: 25.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[50],
                              borderRadius: BorderRadius.circular(12.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(0, 1), // changes position of shadow
                                ),],
                            ),
                            height: 160,
                            width: 140,
                            child: Padding(
                              padding: const EdgeInsets.only(top:28.0),
                              child: Column(
                                children: [
                                  Image.asset('assets/1.png',
                                  color: Colors.red.shade900,
                                  height: 80.0,),
                                  SizedBox(height:10.0),
                                  Text('RECONCILE',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:18.0
                                  ),
                                    
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  //Third Button
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:20.0,right:20.0, top: 25.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[50],
                              borderRadius: BorderRadius.circular(12.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(0, 1), // changes position of shadow
                                ),],
                            ),
                            height: 160,
                            width: 140,
                            child: Padding(
                              padding: const EdgeInsets.only(top:28.0),
                              child: Column(
                                children: [
                                  Image.asset('assets/3.png',
                                  color: Colors.red.shade900,
                                  height: 80.0,),
                                  SizedBox(height:10.0),
                                  Text('SHARE',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:18.0
                                  ),
                                    
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
//Fourth Button
                        Padding(
                          padding: const EdgeInsets.only(left:20.0,right:20.0, top: 25.0),
                          child: Container(                            
                            decoration: BoxDecoration(
                              color: Colors.blue[50],
                              borderRadius: BorderRadius.circular(12.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(0, 1), // changes position of shadow
                                ),],
                            ),
                            height: 160,
                            width: 140,
                            child: Padding(
                              padding: const EdgeInsets.only(top:28.0),
                              child: Column(
                                children: [
                                  Image.asset('assets/2.png',
                                  color: Colors.red.shade900,
                                  height: 80.0,),
                                  SizedBox(height:10.0),
                                  Text('EXIT ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:18.0
                                  ),
                                    
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                    ],
                  )
                ],
              );
  }
}