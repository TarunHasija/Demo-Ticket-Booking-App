import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Settings extends StatelessWidget {
  const Settings({super.key});
  // ignore: non_constant_identifier_names
  final custom_blue = const Color.fromRGBO(25, 31, 50, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
               const Expanded(
                child: SizedBox(
                  width: double.infinity,
                  height: 415, // Adjust the height as needed
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/homepage.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              // --------------profile row-----------
              Padding(
                padding:  const EdgeInsets.only(top: 51.0, left: 20, right: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context,'bottom');
                            },
                            child: Positioned(
                              left: 0,
                              right :22,
                              child: Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(.3),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 0.0),
                                    child: Icon(
                                      Icons.arrow_back_ios_new_rounded,
                                      color: Colors.white,
                                      weight: 2,
                                      size: 25,
                                    ),
                                  )),
                            ),
                          ),
                          const Text(
                            'Profile',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'bottom');
                              },
                              child: const Icon(
                                CupertinoIcons.pen,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                    // ---------------profile card-----------------
                    Padding(
                      padding:
                           const EdgeInsets.only(right: 0, left: 0, top: 50),
                      child: Expanded(
                        child: Container(
                            width: 360,
                            height: 590,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(23),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(
                                      .2), // You can change the color and opacity here
                                  spreadRadius: 4,
                                  blurRadius: 10,
                                  offset: const Offset(0,
                                      3), // changes the position of the shadow
                                ),
                              ], // Adjust the radius according to your preference
                            ),
                            child: Padding(
                              padding:
                                   const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.black.withOpacity(.3), // Set the border color
                                        width: 3.0, // Set the border width
                                      ),
                                    ),
                                    child: const CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/profile_user.jpg'),
                                      radius: 45,
                                    ),
                                  ),
                                  const Text(
                                    "Tarun Hasija",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            Color.fromRGBO(25, 31, 50, 1)),
                                  ),
                                  Text(
                                    'abc0009@gmail.com',
                                    style:
                                        TextStyle(color: Colors.grey[700]),
                                  ),


                                  //---------------------settings
                                  const SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      Text('Settings',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: custom_blue),),
                                    ],
                                  ),
                                  const SizedBox(height: 8,),
                                  Card(
                                    shadowColor: Colors.black.withOpacity(.7),
                                    color: Colors.blueGrey[50],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                    elevation: 2,
                                    child:  Padding(
                                      padding:  const EdgeInsets.all(15.0),
                                      child: Row(
                                        children: [Icon(Icons.wallet,color: custom_blue,),
                                        const SizedBox(width: 15,),
                                        const Text('Payment method',style: TextStyle(fontWeight: FontWeight.w500),),
                                        const SizedBox(width:90,),
                                          const Icon(Icons.arrow_forward_ios_outlined,size: 20,)
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  Card(
                                    shadowColor: Colors.black.withOpacity(.7),
                                    color: Colors.blueGrey[50],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                    elevation: 2,
                                    child:  Padding(
                                      padding:  const EdgeInsets.all(15.0),
                                      child: Row(
                                        children: [Icon(Icons.language_outlined,color: custom_blue,),
                                          const SizedBox(width: 15,),
                                          const Text('Language',style: TextStyle(fontWeight: FontWeight.w500),),
                                          const SizedBox(width:140,),
                                          const Icon(Icons.arrow_forward_ios_outlined,size: 20,)
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  Card(
                                    shadowColor: Colors.black.withOpacity(.7),
                                    color: Colors.blueGrey[50],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                    elevation: 2,
                                    child:  Padding(
                                      padding:  const EdgeInsets.all(15.0),
                                      child: Row(
                                        children: [Icon(Icons.sunny,color: custom_blue,),
                                          const SizedBox(width: 15,),
                                          const Text('Dark theme',style: TextStyle(fontWeight: FontWeight.w500),),
                                          const SizedBox(width:128,),
                                          const Icon(Icons.arrow_forward_ios_outlined,size: 20,)
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16,),
                                  //----------support--------------------------
                                  Row(
                                    children: [
                                      Text('Support',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: custom_blue),),
                                    ],
                                  ),
                                  const SizedBox(height: 16,),

                                  Card(
                                    shadowColor: Colors.black.withOpacity(.7),
                                    color: Colors.blueGrey[50],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                    elevation: 2,
                                    child:  Padding(
                                      padding:  const EdgeInsets.all(15.0),
                                      child: Row(
                                        children: [Icon(Icons.live_help_outlined,color: custom_blue,),
                                          const SizedBox(width: 15,),
                                          const Text('Help center',style: TextStyle(fontWeight: FontWeight.w500),),
                                          const SizedBox(width:130,),
                                          const Icon(Icons.arrow_forward_ios_outlined,size: 20,)
                                        ],
                                      ),
                                    ),
                                  ),


                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
