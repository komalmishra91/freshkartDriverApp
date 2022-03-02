import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fresh_kart_driver/helper_widgets/custom_button.dart';
import 'package:fresh_kart_driver/helper_widgets/helper_utilities.dart';
import 'package:fresh_kart_driver/screens/home_screen.dart';


class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

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
              HelperUtility.appBar(title: "Enter OTP",color: Colors.black,context: context),
              SizedBox(height: 60,),
              Text("Please enter the ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              Text("code we send you",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 40,),
              TextField(
                controller: phoneController,
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: 20),
                    hintText: "00 00 00",
                    border: InputBorder.none
                ),
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
              ),

              Row(
                children: [
                  Text("Didn't get it?",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.normal),),
                  Text("Resend",style: TextStyle(color: Colors.green,fontSize: 12,fontWeight: FontWeight.normal),),
                ],
              ),
              Spacer(),
              CustomButton(bttnText: "Submit",ontap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}
