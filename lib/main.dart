import 'package:flutter/material.dart';
import 'package:watch_app_ui/my_class.dart';
import 'package:watch_app_ui/pages.dart';

import 'constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: // MyWidget(),
          MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            height: double.infinity,
            child: ListWheelScrollView(
                offAxisFraction: 1.5,
                itemExtent: 200,
                physics: const FixedExtentScrollPhysics(),
                // diameterRatio: 0.7,
                /*  childDelegate: ListWheelChildBuilderDelegate(
                childCount: 10,
                builder: ((context, index) => Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 4.0, horizontal: 4),
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(15)),
                ),*/

                children: [
                  first78(),
                  booking(),
                  numbers(),
                  smt4r8(),
                  myProfile()
                ])));
  }

  Widget booking() {
    return Container(
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.black87),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              "Recent Booking",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white54),
            ),
            const SizedBox(height: 5),
            Container(
              width: 160,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(child: Text("SMT4RB")),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                      color: Colors.black, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.watch,
                    color: Colors.amber,
                  ),
                ),
                // SizedBox(width: 10),
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                      color: Colors.black87, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.alarm,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "All Booking",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white54),
                ),
                Text(
                  "Notifacation",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white54),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Container(
              height: 10,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(25)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget numbers() {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.black87, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          SizedBox(
            height: 160,
            width: double.infinity,
            child: GridView.builder(
              cacheExtent: 0.3,
              itemCount: myClass.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (context, index) => Container(
                  //   height: 30,
                  //  width: 30,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      myClass[index].id.toString(),
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white54),
                    ),
                  )),
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.arrow_back,
                color: Colors.white54,
              ),
              Container(
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.amber),
                    borderRadius: BorderRadius.circular(30)),
              ),
              const Icon(
                Icons.close,
                color: Colors.white54,
              ),
            ],
          ),
          const SizedBox(height: 5)
        ],
      ),
    );
  }

  Widget first78() {
    return Container(
        width: 200,
        height: 250,
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(15)),
        child: Stack(
          children: [
            Positioned(
              top: 15,
              left: 15,
              child: Container(
                height: 90,
                width: 90,
                decoration: const BoxDecoration(
                    color: Colors.black, shape: BoxShape.circle),
              ),
            ),
            Center(
              child: Container(
                height: 64,
                width: 74,
                decoration: const BoxDecoration(
                    color: Colors.black, shape: BoxShape.circle),
                child: const Center(
                  child: Text(
                    "B78",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                    color: Colors.amber, shape: BoxShape.circle),
              ),
            ),
          ],
        ));
  }

  Widget smt4r8() {
    return TheConstContainer(
      child: Padding(
        padding: const EdgeInsets.only(left: 12.5),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 6, 4, 4.0),
                child: Text("Recent Booking",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    )),
              ),
              Text("SMT4R8",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                      fontSize: 20)),
              SizedBox(height: 10),
              Text("Sep 2019",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white54,
                  )),
              TheConstList(),
              Text("Oct 2019",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white54,
                  )),
              TheConstList()
            ]),
      ),
    );
  }

  Widget myProfile() {
    return TheConstContainer(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Expanded(child: SizedBox()),
              Icon(Icons.arrow_back,
                  size: 15, color: Color.fromARGB(255, 207, 156, 2)),
              Text(
                "My Profile",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 207, 156, 2)),
              ),
            ],
          ),
        ),
        const CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey,
          backgroundImage: NetworkImage(
              "https://pbs.twimg.com/media/FXbuHrTWQAEiQYP?format=jpg&name=large"),
        ),
        const SizedBox(height: 10),
        const Text("AbdulRazaq Amiri",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white54,
            )),
        const SizedBox(height: 15),
        const Text("0783345912",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white54,
                fontSize: 10)),
        const SizedBox(height: 5),
        const Text("AbdulRazaqAmiri@gmail.com",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white54,
                fontSize: 10)),
        const SizedBox(height: 5),
        const Text("11 Nov 1998",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white54,
                fontSize: 10)),
        const SizedBox(height: 5),
      ],
    ));
  }
}
