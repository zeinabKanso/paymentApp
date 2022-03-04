import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/component/colors.dart';
import 'package:payment_app/large_buttons.dart';
import 'package:payment_app/pages/payment_page.dart';
import 'package:payment_app/widgets/buttons.dart';
import 'package:payment_app/widgets/text_size.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w= MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: h,
        child: Stack(
          children: [
            _headSection(),
            _listBills(),
            _payButtons(),
          ],
        ),
      ),
    );
  }

  _headSection(){
    return Container(
      height: 220,
      //color: Colors.red,
      child: Stack(
        children: [
          _mainBackground(),
          _curveImageContainer(),
          _buttonContainer(),
          _textContainer(),
        ],
      ),
    );
  }

  _mainBackground(){
    return Positioned(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "images/background.png"
              )
            )
          ),
        )
    );
  }

  _curveImageContainer(){
    return Positioned(
      left: 0,
        right: -10,
        bottom: 0,
        child: Container(
          height: MediaQuery.of(context).size.height*0.1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "images/curve.png"
                  )
              )
          ),
        )
    );
  }

  _buttonContainer(){
    return Positioned(
        right: 43,
        bottom: 0,
        child: GestureDetector(
          onTap: (){
            showModalBottomSheet<dynamic>(
              isScrollControlled: true,
              barrierColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                context: context, builder: (BuildContext bc){
              return Container(
                height: MediaQuery.of(context).size.height-190,
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 0,
                        child: Container(
                          color: Color(0xFFeef1f4).withOpacity(0.7),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height-220,

                    )),
                    Positioned(
                      top: -10,
                        right: 48,
                        child: Container(
                          padding : const EdgeInsets.only(top: 15, bottom: 25) ,
                      width: 40,
                      height: 200,
                      decoration:  BoxDecoration(
                        color: AppColor.mainColor,
                        borderRadius: BorderRadius.circular(29),

                      ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              AppButtons(

                                icon: Icons.cancel ,
                                backgroundColor: Colors.white,
                                textColor: Colors.white,
                                text: '',
                                iconColor: AppColor.mainColor,
                                onTap: (){Navigator.pop(context);},
                              ),
                              AppButtons(

                                icon: Icons.add ,
                                backgroundColor: Colors.white,
                                textColor: Colors.white,
                                iconColor: AppColor.mainColor,
                                onTap: (){},

                                text: 'Add ',
                              ),
                              AppButtons(

                                icon: Icons.history ,
                                backgroundColor: Colors.white,
                                textColor: Colors.white,
                                text: 'History',
                                iconColor: AppColor.mainColor,
                                onTap: (){},
                              )
                            ],
                          ),
                    ))
                  ],
                ),
              );
            });
          },
          child: Container(

            height: 50,
            width: 50,

            decoration: BoxDecoration(

              image: DecorationImage(
                image: AssetImage(
                  "images/lines.png"
                )
              ),

              boxShadow:[
                BoxShadow(
                  blurRadius: 6,
                  offset: Offset(0,1),
                  color: Color(0xFF11324d).withOpacity(0.2)
                )
                ]
            ),
    ),
        )
    );
  }

  _listBills(){
    return Positioned(
        top: 230,
        left: 0,
        right: 0,
        bottom: 0,
        child:
        MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (_, index) {
             return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20 , right: 20),
                    height: 100,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width - 20,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30)
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFFd8dbe0),
                              offset: Offset(1, 1),
                              blurRadius: 10.0,
                              spreadRadius: 10
                          )
                        ]
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 10, left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          width: 3,
                                          color: Colors.grey,
                                        ),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              "images/brand1.png",
                                            )
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "KenGen Power",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColor.mainColor,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "ID: ",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColor.idColor,
                                            fontWeight: FontWeight.w700
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),

                              SizedText(text: 'Auto pay on 24th', color: AppColor
                                  .green),
                              SizedBox(height: 5)
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: AppColor.selectBackground
                                    ),
                                    child: Center(
                                      child: Text(
                                        'select',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: AppColor.selectColor
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Text(
                                    '\$125.00',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                        color: AppColor.mainColor
                                    ),
                                  ),

                                  Text(
                                    'Due in 3 days',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: AppColor.idColor
                                    ),
                                  ),
                                  SizedBox(height: 10)
                                ],
                              ),
                              SizedBox(width: 5),
                              Container(
                                width: 5,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: AppColor.halfOval,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30)
                                    )
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 100,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width - 20,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30)
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFFd8dbe0),
                              offset: Offset(1, 1),
                              blurRadius: 10.0,
                              spreadRadius: 10
                          )
                        ]
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 10, left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          width: 3,
                                          color: Colors.grey,
                                        ),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              "images/brand2.png",
                                            )
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Total",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColor.mainColor,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "ID: 2 ",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColor.idColor,
                                            fontWeight: FontWeight.w700
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),

                              SizedText(text: 'Auto pay on 24th', color: AppColor
                                  .green),
                              SizedBox(height: 5)
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: AppColor.selectBackground
                                    ),
                                    child: Center(
                                      child: Text(
                                        'select',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: AppColor.selectColor
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Text(
                                    '\$125.00',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                        color: AppColor.mainColor
                                    ),
                                  ),

                                  Text(
                                    'Due in 3 days',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: AppColor.idColor
                                    ),
                                  ),
                                  SizedBox(height: 10)
                                ],
                              ),
                              SizedBox(width: 5),
                              Container(
                                width: 5,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: AppColor.halfOval,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30)
                                    )
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                    ,

                  )
                ]
                ,
             );
            },
          ),
        )

    );
  }

  _payButtons(){
    return Positioned(
        bottom: 15,
        child:
    AppLargeButton(text: "Pay all bills", textColor: Colors.white, onTap: (){
      Get.to(()=>PaymentPage());
    },));
  }

  _textContainer(){
    return Stack(
      children: [

        Positioned(
            left: 0,
            top: 75,
            child: Text(
              "MY BILLS",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.withOpacity(0.5)
              ),
            )),
        Positioned(
            left: 10,
            top: 50,
            child: Text(
              "MY BILLS",
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            )),

      ],
    );
  }

}
