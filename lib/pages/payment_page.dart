import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/component/colors.dart';
import 'package:payment_app/large_buttons.dart';
import 'package:payment_app/pages/my_home-page.dart';
import 'package:payment_app/widgets/buttons.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w= MediaQuery.of(context).size.width;
    return Scaffold(
      body:Container(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        height: h,
        width: w,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                    "images/paymentbackground.png"
                )
            )
        ),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: h*0.14,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                          "images/success.png"
                      )
                  )
              ),

            ),

                Text(
                  "SUCCESS ! ",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: AppColor.mainColor
                  ),
                ),
            Text(
              "payment is completed for 2 bilss",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: AppColor.idColor
              ),
            ),
            SizedBox(height: h*0.05),
            Container(
              height: 160,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: Colors.grey.withOpacity(0.5)
                )
              ),

              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                  child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (_, index){
                    return  Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 15, left: 20),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.green
                                ),
                                child: Icon(Icons.done, size: 30),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "KenGen Power",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.mainColor
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "1235",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.idColor
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Text(
                                    "\$734.00",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.mainColor
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  /*
                                Text(
                                  "\$734.00",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.mainColor
                                  ),
                                ),
                                */

                                ],
                              ),


                            ],
                          ),
                          Divider(thickness: 2, color: Colors.green.withOpacity(0.5))
                        ],
                      ),
                    );
                  },

                )
              ),
            ),
            SizedBox(height: h*0.05),
            Column(
             children: [
               Text(
                 'total amount',
                 style: TextStyle(
                   fontSize: 16,
                   color: AppColor.mainColor
                 ),

               ),
               SizedBox(height: 10),
               Text(
                 '\$2840.00',
                 style: TextStyle(
                     fontSize: 20,
                     color: AppColor.mainColor,
                   fontWeight: FontWeight.w600
                 ),

               )
             ],
            ),
            SizedBox(height: h*0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButtons(icon: Icons.share_sharp, onTap: (){},text: "share"),
                SizedBox(width: 88),
                AppButtons(icon: Icons.print_outlined, onTap: (){},text: "print"),
              ],
            ),
            SizedBox(height: h*0.01),
            AppLargeButton(text: "Done", backgroundColor: Colors.white, textColor: AppColor.mainColor,onTap: (){
              Get.to(()=>MyHomePage());
            })

          ],
        ),
      ) ,


    );
  }
}
