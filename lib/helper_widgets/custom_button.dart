import 'package:flutter/material.dart';
import 'package:fresh_kart_driver/constants/colors.dart';

class CustomButton extends StatelessWidget {
  Function ontap;
  String bttnText;

  CustomButton({this.bttnText,this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child:  Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 10,bottom: 10,),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color:ColorConstants.primaryColor
        ),
        child: Center(
          child: Text(bttnText,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.white),),
        ),
      ),
    );
  }
}