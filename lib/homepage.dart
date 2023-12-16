import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final custom_blue = const Color.fromRGBO(25, 31, 50, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.zero,
      children: [
        Stack(children: [
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
          Padding(
            padding: const EdgeInsets.only(top: 48.0, left: 16),
            child: Column(
              children: [
                 Row(
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
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        Text(
                          'Tarun Hasija',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 160,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'notification');
                          },
                          child: const Icon(
                            CupertinoIcons.bell_fill,
                            color: Colors.white,
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Text(
                      'Securely Book\nyour Flight Ticket',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 0),
                  child: Expanded(
                    child: Container(
                        width: 360,
                        height: 420,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(23),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                  .2), // You can change the color and opacity here
                              spreadRadius: 4,
                              blurRadius: 10,
                              offset: const Offset(
                                  0, 3), // changes the position of the shadow
                            ),
                          ], // Adjust the radius according to your preference
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Card(
                                    shadowColor: Colors.black.withOpacity(.7),
                                    color: Colors.grey[300],
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    elevation: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 12),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.airplane_ticket_outlined,
                                            size: 30,
                                            color: custom_blue,
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("From",
                                                  style: TextStyle(
                                                      color: Colors.grey[800],
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              const SizedBox(
                                                height: .7,
                                              ),
                                              Text(
                                                "India",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 15,
                                                    height: 1,
                                                    color: custom_blue),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Card(
                                    color: Colors.grey[300],
                                    shadowColor: Colors.black.withOpacity(.7),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    elevation: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 12),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.airplane_ticket_outlined,
                                            size: 30,
                                            color: custom_blue,
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("To",
                                                  style: TextStyle(
                                                      color: Colors.grey[800],
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              const SizedBox(
                                                height: .7,
                                              ),
                                              Text(
                                                "United States Of America",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 15,
                                                    height: 1,
                                                    color: custom_blue),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Card(
                                          shadowColor:
                                              Colors.black.withOpacity(.7),
                                          color: Colors.grey[300],
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          elevation: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 12),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Departure",
                                                    style: TextStyle(
                                                        color: Colors.grey[800],
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                const SizedBox(
                                                  height: .7,
                                                ),
                                                Text(
                                                  "10 June 2023",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 15,
                                                      height: 1,
                                                      color: custom_blue),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Card(
                                          shadowColor:
                                              Colors.black.withOpacity(.7),
                                          color: Colors.grey[300],
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          elevation: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 12),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Return",
                                                    style: TextStyle(
                                                        color: Colors.grey[800],
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                const SizedBox(
                                                  height: .7,
                                                ),
                                                Text(
                                                  "12 June 2023",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: 1,
                                                      color: custom_blue),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Card(
                                    shadowColor: Colors.black.withOpacity(.7),
                                    color: Colors.grey[300],
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    elevation: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 12),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Travelers",
                                                  style: TextStyle(
                                                      color: Colors.grey[800],
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              const SizedBox(
                                                height: .7,
                                              ),
                                              Text(
                                                "4 Person",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    height: 1,
                                                    fontSize: 15.4,
                                                    color: custom_blue),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                // mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  SizedBox(
                                                    height: 21,
                                                    width: 24,
                                                    child: DecoratedBox(
                                                      decoration: BoxDecoration(
                                                        color: Colors.grey[400],
                                                        // shape: BoxShape.circle,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      child: const Text(
                                                        '  -',
                                                        style: TextStyle(
                                                            height: 1.45,
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 16,
                                                  ),
                                                  const Text(
                                                    '04',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    width: 16,
                                                  ),
                                                  SizedBox(
                                                    height: 21,
                                                    width: 24,
                                                    child: DecoratedBox(
                                                      decoration: BoxDecoration(
                                                        color: Colors.grey[400],
                                                        // shape: BoxShape.circle,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      child: const Text(
                                                        '  +',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w900),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 14,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: custom_blue,
                                          // padding: EdgeInsets.symmetric(horizontal: 127,vertical: 16),
                                          fixedSize: const Size(310, 55),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12))),
                                      child: const Text(
                                        "Search",
                                        style: TextStyle(fontSize: 20),
                                      )),
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming flights',
                        style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w700,
                            color: custom_blue),
                      ),
                      const Text(
                        'See All',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Card(
                        shadowColor: Colors.black.withOpacity(.7),
                        color: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Canada Airways",
                                  style: TextStyle(
                                      color: custom_blue,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17)),
                              Text(
                                "\$500",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: custom_blue),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Card(
                        shadowColor: Colors.black.withOpacity(.7),
                        color: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("India Airways",
                                  style: TextStyle(
                                      color: custom_blue,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17)),
                              Text(
                                "\$800",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: custom_blue),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Card(
                        shadowColor: Colors.black.withOpacity(.7),
                        color: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 20,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Japan Airways",
                                  style: TextStyle(
                                      color: custom_blue,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17)),
                              Text(
                                "\$1000",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: custom_blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ])
      ],
    ));
  }
}
