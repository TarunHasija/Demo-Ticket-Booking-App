import 'package:flutter/material.dart';

class Notify extends StatelessWidget {
  const Notify({super.key});
  final custom_blue = const Color.fromRGBO(25, 31, 50, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.zero,
      children: [
        Stack(
          children: [
            const Expanded(
              child: SizedBox(
                width: double.infinity,
                height: 135, // Adjust the height as needed
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/notification.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 55, left: 20, right: 21),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
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
                      const SizedBox(
                        width: 90,
                      ),
                      const Text(
                        "Notification",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Today',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: custom_blue),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 47,
                                  height: 47,
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey[500]?.withOpacity(.17),
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                    Icons.airplane_ticket_outlined,
                                    size: 25,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Your booking has been successfully',style: TextStyle(fontWeight: FontWeight.w700,color: custom_blue,fontSize: 16),),
                                  Text('hsbvk sjkbd vrkj vskjbf kjbrk kejr kbrjgoib oberg kerbgerg jbrgesf rgf srgw egwgd efwew werfkj wefj wfgl gjrg eljg dsfs',style: TextStyle(height: 1.75,fontWeight: FontWeight.w600,color: Colors.grey[500]),),
                                  Text('20 Jun 2023 • 08:30 PM',style: TextStyle(height: 2.2,fontWeight: FontWeight.w600,color: Colors.grey[500]), )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height:20 ,),
                      Divider(color: Colors.grey[700],indent: 15,endIndent:15,),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 47,
                                  height: 47,
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey[500]?.withOpacity(.17),
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                    Icons.check_circle_outlined,
                                    size: 25,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(width: 15,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Don\'t miss out on discounted flights!',style: TextStyle(fontWeight: FontWeight.w700,color: custom_blue,fontSize: 16),),
                                  Text('hsbvk sjkbd vrkj vskjbf kjbrk kejr kbrjgoib oberg kerbgerg jbrgesf rgf srgw egwgd efwew werfkj wefj wfgl gjrg eljg dsfs',style: TextStyle(height: 1.75,fontWeight: FontWeight.w600,color: Colors.grey[500]),),
                                  Text('20 Jun 2023 • 08:30 PM',style: TextStyle(height: 2.2,fontWeight: FontWeight.w600,color: Colors.grey[500]), )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50,),

                  ////-----------------yesterday-----------------/////
                  Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Yesterday',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: custom_blue),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 47,
                                  height: 47,
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey[500]?.withOpacity(.17),
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                    Icons.airplane_ticket_outlined,
                                    size: 25,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Your booking has been successfully',style: TextStyle(fontWeight: FontWeight.w700,color: custom_blue,fontSize: 16),),
                                  Text('hsbvk sjkbd vrkj  rgf srgw egwgd efwew werfkj wefj wfgl gjrg eljg dsfs',style: TextStyle(height: 1.75,fontWeight: FontWeight.w600,color: Colors.grey[500]),),
                                  Text('20 Jun 2023 • 08:30 PM',style: TextStyle(height: 2.2,fontWeight: FontWeight.w600,color: Colors.grey[500]), )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height:20 ,),
                      Divider(color: Colors.grey[700],indent: 15,endIndent:15,),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 47,
                                  height: 47,
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey[500]?.withOpacity(.17),
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                    Icons.check_circle_outlined,
                                    size: 25,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(width: 15,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Don\'t miss out on discounted flights!',style: TextStyle(fontWeight: FontWeight.w700,color: custom_blue,fontSize: 16),),
                                  Text('hsbvk jbrgesf rgf srgw egwgd efwew werfkj wefj wfgl gjrg eljg dsfs',style: TextStyle(height: 1.75,fontWeight: FontWeight.w600,color: Colors.grey[500]),),
                                  Text('20 Jun 2023 • 08:30 PM',style: TextStyle(height: 2.2,fontWeight: FontWeight.w600,color: Colors.grey[500]), )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    const SizedBox(height: 50,),
//------------------18th jun 2023---------------//
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                '19 Jun 2023',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: custom_blue),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 47,
                                  height: 47,
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey[500]?.withOpacity(.17),
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                    Icons.airplane_ticket_outlined,
                                    size: 25,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Your booking has been successfully',style: TextStyle(fontWeight: FontWeight.w700,color: custom_blue,fontSize: 16),),
                                  Text('hsbvk sjkbd vrkj vskjbf kjbrk kejr kbrjgoib oberg kerbgerg jbrgesf rgf srgw egwgd efwew werfkj wefj wfgl gjrg eljg dsfs',style: TextStyle(height: 1.75,fontWeight: FontWeight.w600,color: Colors.grey[500]),),
                                  Text('20 Jun 2023 • 08:30 PM',style: TextStyle(height: 2.2,fontWeight: FontWeight.w600,color: Colors.grey[500]), )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height:20 ,),
                      Divider(color: Colors.grey[700],indent: 15,endIndent:15,),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 47,
                                  height: 47,
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey[500]?.withOpacity(.17),
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                    Icons.check_circle_outlined,
                                    size: 25,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(width: 15,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Don\'t miss out on discounted flights!',style: TextStyle(fontWeight: FontWeight.w700,color: custom_blue,fontSize: 16),),
                                  Text('hsbvk sjkbd vrkj vskjbf kjbrk kejr kbrjgoib oberg kerbgerg jbrgesf rgf srgw egwgd efwew werfkj wefj wfgl gjrg eljg dsfs',style: TextStyle(height: 1.75,fontWeight: FontWeight.w600,color: Colors.grey[500]),),
                                  Text('20 Jun 2023 • 08:30 PM',style: TextStyle(height: 2.2,fontWeight: FontWeight.w600,color: Colors.grey[500]), )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 50,),
                    ],

                  )
                ],

              ),
            )
          ],
        )
      ],
    ));
  }
}
