import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fresh_kart_driver/constants/colors.dart';
import 'package:fresh_kart_driver/helper_widgets/helper_utilities.dart';

import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      body: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 20,top: 20,right: 20),
                      child: HelperUtility.appBar(title: "Profile",color: Colors.white,context: context),
                    ),

                    SizedBox(height: 60,),
                   Stack(
                     children: [
                       Container(
                         height: 100,width: 100,
                         decoration: BoxDecoration(
                             color: Colors.blue,shape: BoxShape.circle
                         ),
                         child:ClipRRect(
                             borderRadius: BorderRadius.circular(50),
                             child: imageFile==null?Image.network("https://wallpaperaccess.com/full/2580788.jpg",fit: BoxFit.cover,):
                             Image.file(imageFile,fit: BoxFit.cover,)),
                       ),
                       InkWell(
                         onTap: (){
                           gteImageFromCamera();
                         },
                         child: Container(
                           margin: EdgeInsets.only(left: 60,top: 80),
                           height: 20,width: 20,
                           decoration: BoxDecoration(
                               color: Colors.white,shape: BoxShape.circle
                           ),
                           child: Icon(Icons.edit,color: Colors.green.shade700,size: 14,),
                         ),
                       ),
                     ],
                   ),
                    SizedBox(height: 10,),
                    Text("GaganDeep Singh",style: TextStyle(color: Colors.white,fontSize: 14),),
                    SizedBox(height: 3,),
                    Text("Jaipur, Rajasthan",style: TextStyle(color: Colors.white,fontSize: 12),),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 60),
                         width: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40)
                          ),
                          color: Colors.white,
                        ),
                     padding: EdgeInsets.only(left: 30,top: 10),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [

                         Center(
                           child: Container(
                             height: 8,width: 80,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               color: Colors.grey.shade300
                             ),
                           ),
                         ),
                         SizedBox(height: 30,),
                         Text("Full Name",style: TextStyle(color: Colors.grey.shade700,fontSize: 12),),
                         Text("GaganDeep Singh",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                         SizedBox(height: 30,),
                         Text("Email",style: TextStyle(color: Colors.grey.shade700,fontSize: 12),),
                         Text("GaganDeep@gmail.com",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                         SizedBox(height: 30,),
                         Text("Address",style: TextStyle(color: Colors.grey.shade700,fontSize: 12),),
                         Text("D-205,Sector-2,Chitrakoot,",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                         SizedBox(height: 30,),
                         Text("Date of Birth",style: TextStyle(color: Colors.grey.shade700,fontSize: 12),),
                         Text("20 November 1990",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                       ],
                     ),

                      ),
                    )
                  ],
                ),
      ),
    );
  }
  gteImageFromCamera() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {

      imageFile = File(pickedFile.path);
      setState(() {

      });

    }
  }
}
