import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


void main (){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bkash App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller= PageController();

  ButtonStyle buttonStyle=ElevatedButton.styleFrom(

      padding: EdgeInsets.symmetric(horizontal: 35),
      backgroundColor: Colors.white,
      foregroundColor: Colors.pink,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
      )

  );

  var MyItems=[
    {"img":"aseets/send_money","title":"Send Money"},
    {"img":"aseets/mobile_recharge","title":"Mobile Recharge"},
    {"img":"aseets/cash_out","title":"Cash Out"},
    {"img":"aseets/make_payment","title":"Payment"},
    {"img":"aseets/add_money","title":"Add money"},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation:1,
        toolbarHeight: 70,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              height: 50,
              width: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('assets/pic1.jpg'),
              ),
            ),

            Container(
              margin: EdgeInsets.all(0),
              child: Column(
                children: [
                  Text(
                    "MD Sakibul Hasan",
                    style: TextStyle(fontSize: 15),
                  ),
                  ElevatedButton(
                      onPressed: (){},
                      child:Text("5030.20tk"),
                      style: buttonStyle,
                  )
                ],
              ),
            ),
            SizedBox(width: 50,),
            
            Container(
              height: 30,
              width: 160,
              margin: EdgeInsets.only(bottom: 20),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: (){},
                    child:Image.asset('assets/rewards.png',color: Colors.white,),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      elevation: 0,
                    ),
                  ),

                  ElevatedButton(
                    onPressed: (){},
                    child:Image.asset('assets/bkash1.png',color: Colors.white),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      elevation: 0
                    ),
                  ),
                ],
              ),
              
            )

          ],

        ),
      ),

      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 100,
                        child: Image.asset('assets/send_money.jpg'),

                      ),
                      Container(
                        height: 20,
                        width: 80,

                        child: Text('সেন্ড মানি'),
                      )
                    ],
                  ),


                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 100,
                        child: Image.asset('assets/mobile_recharge.jpg'),

                      ),
                      Container(
                        height: 30,
                        width: 150,

                        child: Text('মোবাইল রিচার্জ',textAlign:TextAlign.center,),
                      )
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 100,
                        child: Image.asset('assets/cash_out.jpg'),

                      ),
                      Container(
                        height: 20,
                        width: 80,

                        child: Text('ক্যাশ আউট'),
                      )
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 100,
                        child: Image.asset('assets/make_payment.jpg'),

                      ),
                      Container(
                        height: 30,
                        width: 100,

                        child: Text('পেমেন্ট'),
                      )
                    ],
                  ),




                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 100,
                        child: Image.asset('assets/add_money.jpg'),

                      ),
                      Container(
                        height: 20,
                        width: 80,

                        child: Text('অ্যাড মানি'),
                      )
                    ],
                  ),


                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 100,
                        child: Image.asset('assets/pay_bill.jpg'),

                      ),
                      Container(
                        height: 30,
                        width: 150,

                        child: Text('পে বিল',textAlign:TextAlign.center,),
                      )
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 100,
                        child: Image.asset('assets/savings.png'),

                      ),
                      Container(
                        height: 20,
                        width: 80,
                        margin: EdgeInsets.all(2.5),

                        child: Text('সেভিংস',textAlign:TextAlign.center,),
                      )
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 100,
                        child: Image.asset('assets/loan-removebg-preview.png'),

                      ),
                      Container(
                        height: 30,
                        width: 100,

                        child: Text('লোন',textAlign:TextAlign.center),
                      )
                    ],
                  ),




                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 100,
                        child: Image.asset('assets/more.jpg'),
                      ),
                      Container(
                        height: 30,
                        width: 50,
                        child: Text('More',textAlign: TextAlign.center,),
                      )
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 40,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(

                      border: Border.all(color: Colors.grey.shade300,),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('  আমার বিকাশ',style: TextStyle(color: Colors.grey.shade700),),
                        ElevatedButton(
                            onPressed: (){},
                            child: Text(
                              'সব দেখুন',
                              style: TextStyle(
                                  color: Colors.pink,
                              ),
                            ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      height: 80,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(

                          border: Border.all(color: Colors.grey.shade300,),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5))
                      ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Column(
                          children: [
                            Container(
                              width:50,
                              height: 50,
                              child: Image.asset('my_offers1.png'),
                            ),

                           Text('My Offers'),

                          ],
                        ),

                        Column(
                            children: [
                              Container(
                                width:50,
                                height: 50,
                                child: Image.asset('grameenphone.jpg'),
                              ),

                              Text('জিপি মাই অফার'),

                            ],
                          ),

                        Column(
                            children: [
                              Container(
                                width:50,
                                height: 50,
                                child: Image.asset('priyo.jpg'),
                              ),

                              Text('Priyo Number'),

                            ],
                          ),

                        Column(
                            children: [
                              Container(
                                width:50,
                                height: 50,
                                child: Image.asset('desco.png'),
                              ),

                              Text('DESCO'),

                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width:50,
                                height: 50,
                                child: Image.asset('grameenphone.jpg'),
                              ),

                              Text('জিপি মাই অফার'),

                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width:50,
                                height: 50,
                                child: Image.asset('grameenphone.jpg'),
                              ),

                              Text('জিপি মাই অফার'),

                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width:50,
                                height: 50,
                                child: Image.asset('grameenphone.jpg'),
                              ),

                              Text('জিপি মাই অফার'),

                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width:50,
                                height: 50,
                                child: Image.asset('grameenphone.jpg'),
                              ),

                              Text('জিপি মাই অফার'),

                            ],
                          ),




                        ],
                      ),
                    ),

                  )
                ],
              ),
          SizedBox(height: 20,),


          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/banner_one (1).png"),
                Image.asset("assets/banner_two (1).png"),
                Image.asset("assets/banner_three (1).png"),
                Image.asset("assets/banner_four (1).png"),
              ],
            ),
          )


            ],
          ),
        ),
      ),






      bottomNavigationBar: BottomNavigationBar (
        elevation: 0,
        backgroundColor: Colors.white,
        currentIndex: 1,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "হোম",),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner),label: "QR স্ক্যান"),
          BottomNavigationBarItem(icon: Icon(Icons.mail),label: "ইনবক্স"),

        ],
      ),
    );
  }
}

