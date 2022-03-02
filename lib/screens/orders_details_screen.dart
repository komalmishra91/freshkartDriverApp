import 'package:flutter/material.dart';
import 'package:fresh_kart_driver/constants/assets.dart';
import 'package:fresh_kart_driver/constants/colors.dart';
import 'package:fresh_kart_driver/helper_widgets/custom_button.dart';
import 'package:fresh_kart_driver/helper_widgets/helper_utilities.dart';
import 'package:fresh_kart_driver/screens/profile_screen.dart';



class OrderDetails extends StatefulWidget {
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {

  int selectedindex;
  List <Data> data = [];
  @override

  void initState() {
    initList();
    super.initState();
  }


  initList(){
    data.add(Data(image: AppImages.cashPayment,title: "Cash"));
    data.add(Data(image: AppImages.mobilePayment,title: "Online"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            children: [
              HelperUtility.appBar(title: "Order Details",color: Colors.black,context: context),
              SizedBox(height: 20,),
        Padding(
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
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: Container(


                padding: EdgeInsets.only(left: 20,bottom: 10),
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
                            color: ColorConstants.red
                        ),
                        child: Center(child: Text("Pending",style:TextStyle(color: Colors.white,fontSize: 12))),
                      ),
                      alignment: Alignment.topRight,
                    ),
                    Row(
                      children: [
                        Text("Order Id:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color:ColorConstants.grey),),
                        SizedBox(width: 5,),
                        Text("4586",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: ColorConstants.black),),
                      ],
                    ),
                    SizedBox(height: 4,),
                    Row(
                      children: [
                        Text("Full Name:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: ColorConstants.grey),),
                        SizedBox(width: 5,),
                        Text("Ramkant",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: ColorConstants.black),),
                      ],
                    ),
                    SizedBox(height: 4,),
                    Row(
                      children: [
                        Text("Deliver to:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: ColorConstants.grey),),
                        SizedBox(width: 5,),
                        Text("D-205,Sector 2,Chitrakot",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: ColorConstants.black),),
                      ],
                    ),
                    SizedBox(height: 4,),
                    Row(
                      children: [
                        Text("Product:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: ColorConstants.grey),),
                        SizedBox(width: 5,),
                        Text("Green Vegetables",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: ColorConstants.black),),
                      ],
                    ),
                    SizedBox(height: 4,),
                    Row(
                      children: [
                        Text("Payment Method:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: ColorConstants.grey),),
                        SizedBox(width: 5,),
                        Text("COD",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: ColorConstants.black),),
                      ],
                    ),
                    SizedBox(height: 4,),
                    Row(
                      children: [
                        Text("Total Payment:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: ColorConstants.grey),),
                        SizedBox(width: 5,),
                        Image.asset(AppImages.indianRupeeImg,height: 12,width: 12,),
                        SizedBox(width: 2,),
                        Text("150",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: ColorConstants.primaryColor),),
                      ],
                    ),
                    SizedBox(height: 4,),
                    Row(
                      children: [
                        Text("Order Date:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: ColorConstants.grey),),
                        SizedBox(width: 5,),
                        Text("17/02/2022",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: ColorConstants.black),),
                      ]
                    ),
                    SizedBox(height: 10,),

                  ],
                ),
              ),
            ),
          ), ),
              SizedBox(height: 40,),
              CustomButton(bttnText: "Mark Delivered",ontap: (){
                showDialouge();
              },),
            ],

          ),
        ),
      ),
    );
  }


  showDialouge(){
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (context,setstate){
              return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(20.0)), //this right here
                child: Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 30),

                  height: MediaQuery.of(context).size.height*0.40,
                  child: Column(
                    children: [
                      Text("Payment Recieved by?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                      SizedBox(height: 30,),
                      Container(
                        height: 150,

                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: data.length,
                            itemBuilder: (context,index){return  Padding(
                              padding: const EdgeInsets.only(left:20,right: 20),
                              child: InkWell(
                                onTap: (){
                                  setstate(() {
                                    selectedindex = index;
                                    print("jhjhj${selectedindex}");
                                  });
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(color:  selectedindex == index?ColorConstants.primaryColor:Colors.grey,width: 2)
                                      ),
                                      child: Image.asset(data[index].image,fit: BoxFit.contain,),
                                    ),
                                    SizedBox(height: 10,),
                                    Text(data[index].title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 15),),
                                  ],
                                ),
                              ),
                            );}),
                      ),
                      SizedBox(height: 20,),
                      CustomButton(bttnText: "Mark Delivered",ontap: (){
                        Navigator.pop(context);
                      },),
                    ],
                  ),
                ),
              );
            },
          );
        });
  }
}

class Data{
  String image;
  String title;
  Data({this.image,this.title});
}
