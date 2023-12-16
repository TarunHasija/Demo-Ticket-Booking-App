import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Ticket extends StatelessWidget {
  const Ticket({Key? key}) : super(key: key);
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
                  height: 230, // Adjust the height as needed
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/ticket_back.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 51, left: 18, right: 15),
                child: Column(
                  children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white, // Set the border color
                              width: 3.0, // Set the border width
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 22,
                            backgroundImage:
                                AssetImage('assets/profile_user.jpg'),
                          ),
                        ),
                        const Text(
                          'My Ticket',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'notification');
                          },
                          child: const Icon(
                            CupertinoIcons.bell_fill,
                            color: Colors.white,
                          )
                        )

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: DefaultTextStyle(
                        style: const TextStyle(color: Colors.white),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Canada',
                                  style: TextStyle(
                                      color: Colors.grey[500], fontSize: 12.5),
                                ),
                                const Text(
                                  'RRP',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, height: 1.5),
                                ),
                                Text(
                                  '10 June 2023',
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 12.5,
                                      height: 1.5),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Image(
                                  image: AssetImage('assets/airplane.png'),
                                  height: 50,
                                  width: 50,
                                  color: Colors.white,
                                ),
                                Text(
                                  '2 hours 50 min',
                                  style: TextStyle(
                                      color: Colors.grey[500], fontSize: 12),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Mexico',
                                  style: TextStyle(
                                      color: Colors.grey[500], fontSize: 12.5),
                                ),
                                const Text(
                                  'TNA',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, height: 1.5),
                                ),
                                Text(
                                  '10 June 2023',
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 12.5,
                                      height: 1.5),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Column(
                        children: [
                          Card(
                            shadowColor: Colors.black.withOpacity(.7),
                            color: Colors.blueGrey[50],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 1,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Canada Airways",
                                          style: TextStyle(
                                              color: custom_blue,
                                              fontWeight: FontWeight.w600,fontSize: 17)),

                                      Text(
                                        "\$1000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: custom_blue),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                                    child: Divider(
                                      height: 20,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Canada',
                                            style: TextStyle(
                                                color: Colors.grey[700], fontSize: 12.5),
                                          ),
                                          Text(
                                            'RRP',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, height: 1.5,color: custom_blue),
                                          ),
                                          Text(
                                            '10 June 2023',
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12.5,
                                                height: 1.5),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Image(
                                            image: AssetImage('assets/airplane.png'),
                                            height: 50,
                                            width: 50,
                                            color: Colors.black,
                                          ),

                                          Text(
                                            '2 hours 50 min',
                                            style: TextStyle(
                                                color: Colors.grey[700], fontSize: 12),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Mexico',
                                            style: TextStyle(
                                                color: Colors.grey[700], fontSize: 12.5),
                                          ),
                                          const Text(
                                            'TNA',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, height: 1.5),
                                          ),
                                          Text(
                                            '10 June 2023',
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12.5,
                                                height: 1.5),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // ------------CARD 2----------------------
                          const SizedBox(height: 6,),
                          Card(
                            shadowColor: Colors.black.withOpacity(.7),
                            color: Colors.blueGrey[50],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 1,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Japan Airways",
                                          style: TextStyle(
                                              color: custom_blue,
                                              fontWeight: FontWeight.w600,fontSize: 17)),

                                      Text(
                                        "\$900",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: custom_blue),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                                    child: Divider(
                                      height: 20,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Japan',
                                            style: TextStyle(
                                                color: Colors.grey[700], fontSize: 12.5),
                                          ),
                                          Text(
                                            'RXP',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, height: 1.5,color: custom_blue),
                                          ),
                                          Text(
                                            '10 June 2023',
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12.5,
                                                height: 1.5),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Image(
                                            image: AssetImage('assets/airplane.png'),
                                            height: 50,
                                            width: 50,
                                            color: Colors.black,
                                          ),

                                          Text(
                                            '2 hours 50 min',
                                            style: TextStyle(
                                                color: Colors.grey[700], fontSize: 12),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Mexico',
                                            style: TextStyle(
                                                color: Colors.grey[700], fontSize: 12.5),
                                          ),
                                          const Text(
                                            'TNA',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, height: 1.5),
                                          ),
                                          Text(
                                            '10 June 2023',
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12.5,
                                                height: 1.5),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // ----------------CARD 3--------------//
                          const SizedBox(height: 6,),
                          Card(
                            shadowColor: Colors.black.withOpacity(.7),
                            color: Colors.blueGrey[50],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 1,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("India Airways",
                                          style: TextStyle(
                                              color: custom_blue,
                                              fontWeight: FontWeight.w600,fontSize: 17)),

                                      Text(
                                        "\$1000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: custom_blue),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                                    child: Divider(
                                      height: 20,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'India',
                                            style: TextStyle(
                                                color: Colors.grey[700], fontSize: 12.5),
                                          ),
                                          Text(
                                            'RRP',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, height: 1.5,color: custom_blue),
                                          ),
                                          Text(
                                            '10 June 2023',
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12.5,
                                                height: 1.5),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Image(
                                            image: AssetImage('assets/airplane.png'),
                                            height: 50,
                                            width: 50,
                                            color: Colors.black,
                                          ),

                                          Text(
                                            '2 hours 50 min',
                                            style: TextStyle(
                                                color: Colors.grey[700], fontSize: 12),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Mexico',
                                            style: TextStyle(
                                                color: Colors.grey[700], fontSize: 12.5),
                                          ),
                                          const Text(
                                            'TNA',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, height: 1.5),
                                          ),
                                          Text(
                                            '10 June 2023',
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12.5,
                                                height: 1.5),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 6,),
                          // ------------------CARD 4---------------
                          Card(
                            shadowColor: Colors.black.withOpacity(.7),
                            color: Colors.blueGrey[50],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 1,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Emirates",
                                          style: TextStyle(
                                              color: custom_blue,
                                              fontWeight: FontWeight.w600,fontSize: 17)),

                                      Text(
                                        "\$2000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: custom_blue),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                                    child: Divider(
                                      height: 20,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Dubai',
                                            style: TextStyle(
                                                color: Colors.grey[700], fontSize: 12.5),
                                          ),
                                          Text(
                                            'RRP',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, height: 1.5,color: custom_blue),
                                          ),
                                          Text(
                                            '10 June 2023',
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12.5,
                                                height: 1.5),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Image(
                                            image: AssetImage('assets/airplane.png'),
                                            height: 50,
                                            width: 50,
                                            color: Colors.black,
                                          ),

                                          Text(
                                            '2 hours 50 min',
                                            style: TextStyle(
                                                color: Colors.grey[700], fontSize: 12),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            'USA',
                                            style: TextStyle(
                                                color: Colors.grey[700], fontSize: 12.5),
                                          ),
                                          const Text(
                                            'TNA',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, height: 1.5),
                                          ),
                                          Text(
                                            '10 June 2023',
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12.5,
                                                height: 1.5),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 6,),
                          // -------------CARD 5-----------------//
                          Card(
                            shadowColor: Colors.black.withOpacity(.7),
                            color: Colors.blueGrey[50],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 1,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Hong Kong Airways",
                                          style: TextStyle(
                                              color: custom_blue,
                                              fontWeight: FontWeight.w600,fontSize: 17)),

                                      Text(
                                        "\$1000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: custom_blue),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                                    child: Divider(
                                      height: 20,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Hong Kong',
                                            style: TextStyle(
                                                color: Colors.grey[700], fontSize: 12.5),
                                          ),
                                          Text(
                                            'RRP',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, height: 1.5,color: custom_blue),
                                          ),
                                          Text(
                                            '10 June 2023',
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12.5,
                                                height: 1.5),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Image(
                                            image: AssetImage('assets/airplane.png'),
                                            height: 50,
                                            width: 50,
                                            color: Colors.black,
                                          ),

                                          Text(
                                            '2 hours 50 min',
                                            style: TextStyle(
                                                color: Colors.grey[700], fontSize: 12),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            'India',
                                            style: TextStyle(
                                                color: Colors.grey[700], fontSize: 12.5),
                                          ),
                                          const Text(
                                            'TNA',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, height: 1.5),
                                          ),
                                          Text(
                                            '10 June 2023',
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12.5,
                                                height: 1.5),
                                          ),

                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20,)
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
