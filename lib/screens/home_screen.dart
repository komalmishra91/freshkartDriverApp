import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_kart_driver/constants/assets.dart';
import 'package:fresh_kart_driver/constants/colors.dart';
import 'package:fresh_kart_driver/helper_widgets/custom_button.dart';
import 'package:fresh_kart_driver/screens/orders_screen.dart';
import 'package:fresh_kart_driver/screens/profile_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isonline=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.40,
                  decoration: BoxDecoration(
                      color: ColorConstants.primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )
                  ),
                  child:Column(
                    children: [
                      SizedBox(height: 30,),
                      ListTile(
                        leading: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                            height: 50,width: 50,
                           child: Image.asset(AppImages.alignImg),
                          ),
                        ),
                        title:  Text("Hello",style: TextStyle(color: Colors.white,fontSize: 10),),
                        subtitle:  Text("GaganDeep Singh",style: TextStyle(color: Colors.white,fontSize: 14),),
                        trailing:   InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ProfileScreen()),
                            );
                          },
                          child: Container(
                            height: 50,width: 50,
                            decoration: BoxDecoration(
                                color: Colors.blue,shape: BoxShape.circle
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                                child: Image.network("https://wallpaperaccess.com/full/2580788.jpg",fit: BoxFit.cover,)),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    isonline = !isonline;
                                  });
                                },
                                child: Container(
                                  height: 35,
                                  width: 150,
                                  child: Center(child: Text("Offline",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: isonline == false?Colors.white:Colors.green),)),
                                  decoration: BoxDecoration(
                                      color: isonline==false?Colors.transparent:Colors.white,
                                      border: Border.all(width: 1,color: Colors.white),
                                      borderRadius: BorderRadius.circular(25)
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    isonline = !isonline;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 120),
                                  height: 35,
                                  width: 150,
                                  child: Center(child: Text("Online",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: isonline == true?Colors.white:Colors.green),)),
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 1,color: Colors.white),
                                      color: isonline==true?Colors.transparent:Colors.white,
                                      borderRadius: BorderRadius.circular(25)
                                  ),
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      Text("Total Amount",style: TextStyle(color: Colors.white,fontSize: 10),),
                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AppImages.indianRupeeImg,color: Colors.white,height: 18,),
                          SizedBox(width: 2,),
                          Text("1500",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      )
                    ],
                  ),

                ),
                Padding(
                  padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.30,left: 20,right: 20),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 20,right: 20),

                      height: MediaQuery.of(context).size.height*0.13,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                      ),
                      child:Row(
                        children: [
                          Text("Total Orders",style: TextStyle(color: Colors.black,fontSize: 15),),
                          Spacer(),
                          Text("205",style: TextStyle(color: ColorConstants.primaryColor,fontSize: 25,fontWeight: FontWeight.bold),),
                        ],
                      )

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            _pendingListView()

          ],
        ),
      ),
    );
  }
  _pendingListView(){
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context,index){
            return Padding(
              padding:  EdgeInsets.only(left: 20,right: 20,bottom: 10),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrdersScreen()),
                    );
                  },
                  child: Container(


                    padding: EdgeInsets.only(left: 10,bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Align(

                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)
                                ),
                                color: Colors.red
                            ),
                            child: Center(child: Text("Pending",style:TextStyle(color: Colors.white,fontSize: 12))),
                          ),
                          alignment: Alignment.topRight,
                        ),
                        Row(
                          children: [
                            Text("Order Id:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.grey.shade700),),
                            SizedBox(width: 5,),
                            Text("4586",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          children: [
                            Text("Full Name:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.grey.shade700),),
                            SizedBox(width: 5,),
                            Text("Ramkant",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          children: [
                            Text("Deliver to:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.grey.shade700),),
                            SizedBox(width: 5,),
                            Text("D-205,Sector 2,Chitrakot",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          children: [
                            Text("Product:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.grey.shade700),),
                            SizedBox(width: 5,),
                            Text("Green Vegetables",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          children: [
                            Text("Payment Method:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.grey.shade700),),
                            SizedBox(width: 5,),
                            Text("Online",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding:  EdgeInsets.only(right: 10,top: 10,bottom: 10),
                          child: CustomButton(bttnText: "Change Status",ontap: (){

                          },),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
