import 'package:flutter/material.dart';
import 'package:fresh_kart_driver/constants/colors.dart';
import 'package:fresh_kart_driver/helper_widgets/custom_button.dart';
import 'package:fresh_kart_driver/helper_widgets/helper_utilities.dart';
import 'package:fresh_kart_driver/screens/orders_details_screen.dart';


class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {


  bool ispending = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            children: [
              HelperUtility.appBar(title: "Orders",color: Colors.black,context: context),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            ispending =!ispending;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 150,
                          child: Center(child: Text("Pending",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: ispending==false?Colors.white:Colors.black),)),
                          decoration: BoxDecoration(
                            color: ispending==false?ColorConstants.primaryColor:Colors.white,
                              border: Border.all(width: 0.5,color: Colors.grey),
                            borderRadius: BorderRadius.circular(25)
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            ispending =!ispending;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 120),
                          height: 40,
                          width: 150,
                          child: Center(child: Text("Delivered",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: ispending==true?Colors.white:Colors.black),)),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.5,color: Colors.grey),
                              color:ispending==true?ColorConstants.primaryColor:Colors.white,
                            borderRadius: BorderRadius.circular(25)
                          ),
                        ),
                      ),

                    ],
                  )
                ],
              ),
                    ispending==false?_pendingListView():_deliveredListView()
            ],
          ),
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
              padding:  EdgeInsets.only(top: 20),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderDetails()),
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
  _deliveredListView(){
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context,index){
            return Padding(
              padding:  EdgeInsets.only(top: 20),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderDetails()),
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
                                color: Colors.green.shade700
                            ),
                            child: Center(child: Text("Delivered",style:TextStyle(color: Colors.white,fontSize: 12))),
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
