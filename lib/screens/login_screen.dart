import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fresh_kart_driver/constants/colors.dart';
import 'package:fresh_kart_driver/helper_widgets/custom_button.dart';
import 'package:fresh_kart_driver/helper_widgets/helper_utilities.dart';
import 'package:fresh_kart_driver/screens/otp_screen.dart';



class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 10,top: 20,bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HelperUtility.appBar(title: "Login",color: ColorConstants.black,context: context),
              SizedBox(height: 60,),
              Text("What's your number?",style: TextStyle(color: ColorConstants.black,fontSize: 18,fontWeight: FontWeight.bold),),
              Text(" wi'll send you a verification code",style: TextStyle(color: ColorConstants.grey,fontSize: 11,fontWeight: FontWeight.bold),),
              SizedBox(height: 40,),
              Row(
                children: [
                  Text("+91",style: TextStyle(color: ColorConstants.black,fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),

                  Expanded(
                    child: TextField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: ColorConstants.grey,fontWeight: FontWeight.normal,fontSize: 20),
                        hintText: " 9898989898",

                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                    ),
                  ),

                ],
              ),
              Spacer(),
              CustomButton(bttnText: "Continue",ontap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtpScreen()),
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}
