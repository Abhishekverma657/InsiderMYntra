import 'dart:ffi';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:footer/footer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: "Myntra".text.bold.black.make(),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.search_outlined, color: Vx.black),
              WidthBox(13),
              Icon(Icons.favorite_border_outlined, color: Vx.black),
              WidthBox(13),
              Icon(Icons.shopping_bag_outlined, color: Vx.black),
            ],
          ).p(16)
        ],
        backgroundColor: Vx.white,
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 43, 42, 42),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13, left: 13, right: 13),
              child: Container(
                height: 40,
                width: double.infinity,
                color: Colors.red,
                child: "LOG IN ".text.white.bold.makeCentered(),
              ),
            ),
            "By enrilling you to agree to".text.makeCentered().p(3),
            "Insider Terms & Condition".text.red700.bold.makeCentered()
          ],
        ),
      )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(
                  color: Vx.white,
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            "https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916__480.png")),
                    VStack([
                      "Your Name".text.bold.size(20).green800.make(),
                      const HeightBox(15),
                      "939392023".text.make()
                    ]).p(12)
                  ],
                )),
            ListTile(
              title: "Men".text.size(18).make(),
              trailing: const Icon(
                Icons.chevron_right_outlined,
                size: 40,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: "Women".text.size(18).make(),
              trailing: const Icon(
                Icons.chevron_right_outlined,
                size: 40,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: "Kids".text.size(18).make(),
              trailing: const Icon(
                Icons.chevron_right_outlined,
                size: 40,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: "Home& Style".text.size(18).make(),
              trailing: const Icon(
                Icons.chevron_right_outlined,
                size: 40,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              height: 1,
            ),
            "EXPLORE".text.make().p16(),
            const Divider(
              height: 1,
            ),
            ListTile(
                title: "Gift Cards".text.size(17).make(),
                trailing: VxBox(child: "Featured".text.red800.makeCentered())
                    .size(80, 30)
                    .border(color: Colors.red)
                    .rounded
                    .make()),
            ListTile(
                title: "Deal Of The Day".text.size(17).make(),
                trailing: VxBox(child: "New".text.red800.makeCentered())
                    .size(80, 30)
                    .border(color: Colors.red)
                    .rounded
                    .make()),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ZStack([
                Container(
                    height: 400,
                    width: double.infinity,
                    //  color: Colors.red,

                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStZZVBk7BfPIjG2zFXYErA8ZL_9zbbKbIOVg&usqp=CAU",
                      fit: BoxFit.cover,
                    )),
                Positioned(
                    bottom: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        "Become AN Insider!"
                            .text
                            .size(30)
                            .yellow400
                            .bold
                            .make(),
                        HeightBox(10),
                        Container(
                          width: 300,
                          child:
                              "Join the insider programme and earn supercoins with every purchase and much more ."
                                  .text
                                  .size(20)
                                  .gray400
                                  .make(),
                        )

                        // "Join the insider programme and earn supercoins with every purchase and much more .".text.gray400.make()
                      ],
                    ))
              ]),
              "New Goal Criteria".text.size(18).white.bold.make(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  color: Colors.grey[600],
                  child: ListTile(
                    leading: const Icon(
                      Icons.celebration,
                      color: Vx.white,
                    ),
                    title: "Rs 0".text.bold.size(25).white.make(),
                    subtitle: "You`ve Spent".text.white.make(),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        "Rs 7000".text.bold.white.make(),
                        "Goal".text.white.make(),
                      ],
                    ),
                  ),
                ),
              ),
              // Divider(height: 2,color: Vx.gray500,).p(8),
              Container(
                height: 70,
                color: Colors.grey[600],
                child: ListTile(
                  leading: const Icon(
                    Icons.celebration,
                    color: Vx.white,
                  ),
                  title: "0/5".text.bold.size(25).white.make(),
                  subtitle: "Your Orders".text.white.make(),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      "5".text.bold.white.make(),
                      "Goal".text.white.make(),
                    ],
                  ),
                ),
              ).p(8),
              VxBox(
                      child:
                          "Note: Recent Purchases will only reflect in the goal once the return window is over"
                              .text
                              .gray500
                              .size(15)
                              .make())
                  .size(double.infinity, 40)
                  .make()
                  .p(8),
              "Benefits of joining the Program"
                  .text
                  .size(20)
                  .bold
                  .yellow400
                  .make(),
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1582121427803-c98a63da3c5d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NjZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),
                ),
                title: "Early Access to the Sales".text.white.make(),
              ).p(8),
              const Divider(
                height: 1,
                color: Colors.grey,
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1578269174936-2709b6aeb913?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXdhcmR8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60"),
                ),
                title: "Insider Exclusive Rewards & Benifits".text.white.make(),
              ).p(8),
              const Divider(
                height: 1,
                color: Colors.grey,
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1520923642038-b4259acecbd7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGNhbGx8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60"),
                ),
                title: "Priority Cosomer Support ".text.white.make(),
              ).p(8),
              " How  does it work".text.size(20).bold.yellow400.make(),

              VxBox(
                      child:
                          "Earn Supercoin with every pirchase. You can get upto 3 supercoins for every Rs 100 spent"
                              .text
                              .gray500
                              .size(15)
                              .make())
                  .size(double.infinity, 40)
                  .make()
                  .p(8),
              VxBox(
                  child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VxCard("Start here".text.make()).red600.make().p(4),
                    Row(
                      children: [
                        ZStack([
                          VxBox().yellow400.size(180, 10).make(),
                          Positioned(
                            bottom: -8,
                            left: -3,
                            child: CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.grey[900],
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.yellow,
                                child: "Z".text.white.size(20).make(),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -8,
                            right: -3,
                            child: CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.grey[900],
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.yellow,
                                child: "Z".text.white.size(20).make(),
                              ),
                            ),
                          ),
                        ]),
                        ZStack([
                          VxBox().yellow400.size(180, 10).make(),
                          Positioned(
                            bottom: -8,
                            left: -3,
                            child: CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.grey[900],
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.yellow,
                                child: "Z".text.white.size(20).make(),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -8,
                            right: -3,
                            child: CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.grey[900],
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.yellow,
                                child: "Z".text.white.size(20).make(),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -8,
                            right: 10,
                            child: CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.grey[900],
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.yellow,
                                child: "Z".text.white.size(20).make(),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -8,
                            right: 20,
                            child: CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.grey[900],
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.yellow,
                                child: "Z".text.white.size(20).make(),
                              ),
                            ),
                          ),
                        ]),
                      ],
                    ),
                    HeightBox(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        VStack([
                          "Select".text.bold.size(20).white.make(),
                          VxBox(
                                  child: "Shop for 7k to enroll"
                                      .text
                                      .gray400
                                      .make())
                              .size(80, 30)
                              .make()
                        ]),
                        WidthBox(30),
                        VStack([
                          "Elite".text.bold.size(20).white.make(),
                          VxBox(
                                  child: "Shop for 7k +10k upgrade"
                                      .text
                                      .gray400
                                      .make())
                              .size(80, 30)
                              .make()
                        ]),
                        WidthBox(40),
                        VStack([
                          "Icon".text.bold.size(20).white.make(),
                          VxBox(
                                  child: "Shop for 7k +20k upgrade"
                                      .text
                                      .gray400
                                      .make())
                              .size(80, 30)
                              .make()
                        ])
                      ],
                    )
                  ],
                ),
              )).size(double.infinity, 150).gray800.make(),
              VxBox(
                  child: HStack([
                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.arrow_upward,
                    color: Colors.yellow,
                  ),
                ).p(4),
                "Shop On Myntra to upgrade your tier".text.white.make()
              ])).size(double.infinity, 40).gray900.make(),
              HeightBox(10),

              "Rewards".text.yellow400.size(23).bold.make(),
              HeightBox(10),

              "Use your Supercoin to get rewards".text.gray400.make(),
              HeightBox(15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: HStack([
                  Container(
                    height: 250,
                    width: 230,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                            height: 200,
                            width: 230,
                            child: Image.network(
                              "https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNsb3RofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
                              fit: BoxFit.cover,
                            )),
                        "Get Myntra Voucher worth Rs .500"
                            .text
                            .bold
                            .make()
                            .p(6),
                      ],
                    ),
                  ),
                  WidthBox(20),
                  Container(
                    height: 250,
                    width: 230,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                            height: 200,
                            width: 230,
                            child: Image.network(
                              "https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNsb3RofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
                              fit: BoxFit.cover,
                            )),
                        "Get Myntra Voucher worth Rs .500"
                            .text
                            .bold
                            .make()
                            .p(6),
                      ],
                    ),
                  ),
                  WidthBox(20),
                  Container(
                    height: 250,
                    width: 230,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                            height: 200,
                            width: 230,
                            child: Image.network(
                              "https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNsb3RofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
                              fit: BoxFit.cover,
                            )),
                        "Get Myntra Voucher worth Rs .500"
                            .text
                            .bold
                            .make()
                            .p(6),
                      ],
                    ),
                  )
                ]),
              ),
              "Myntra Insider".text.red400.size(30).bold.makeCentered().p(16)
            ],
          ),
        ),
      ),
    );
  }
}
