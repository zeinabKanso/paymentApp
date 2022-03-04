import 'package:flutter/cupertino.dart';
import 'package:payment_app/component/colors.dart';

class AppLargeButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final Function()? onTap;
  final bool? isBorder;
  final String text;

  const AppLargeButton({Key? key,
  this.onTap,
    this.backgroundColor:AppColor.mainColor,
    this.isBorder: false,
    this.textColor,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        height: 50,
        width: MediaQuery.of(context).size.width-50,
        decoration: BoxDecoration(

          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: AppColor.mainColor
          )
        ),
        child: Center(
          child: Text(
            text ,
            style: TextStyle(
              fontSize: 30,
              color: textColor,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
