import 'package:flutter/material.dart';
import 'package:clean_app/color_scheme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'ubuntu',
      ),
      debugShowCheckedModeBanner: false,
      home: const mainPage(),
    );
  }
}

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  String selectedType = "initial";
  String selectedFrequency = "monthly";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      appBar: AppBar(
        title: const Text(
          "Your Plan",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Selected Cleaning",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          changeCleaningType("initial");
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 140,
                              width: MediaQuery.of(context).size.width * 0.43,
                              decoration: const BoxDecoration(
                                color: Color(0xffdfdeff),
                                image: DecorationImage(
                                  image: AssetImage('asset/image/img1.png'),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Initial Cleaning",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffededed),
                              ),
                              child: (selectedType == "initial")
                                  ? Icon(
                                      Icons.check_circle,
                                      color: pink,
                                      size: 30,
                                    )
                                  : Container(),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changeCleaningType("upkeep");
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 140,
                              width: MediaQuery.of(context).size.width * 0.43,
                              decoration: const BoxDecoration(
                                color: Color(0xffdfdeff),
                                image: DecorationImage(
                                  image: AssetImage('asset/image/img2.png'),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Upkeep Cleaning",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffededed),
                              ),
                              child: (selectedType == "upkeep")
                                  ? Icon(
                                      Icons.check_circle,
                                      color: pink,
                                      size: 30,
                                    )
                                  : Container(),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Selected Frequecy",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          changeFrequency("weekly");
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          decoration: (selectedFrequency == "weekly")
                              ? BoxDecoration(
                                  color: pink,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)))
                              : BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.3)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Weekly",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: (selectedFrequency == "weekly")
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changeFrequency("biweekly");
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          decoration: (selectedFrequency == "biweekly")
                              ? BoxDecoration(
                                  color: pink,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)))
                              : BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.3)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Bi-Weekly",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: (selectedFrequency == "biweekly")
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changeFrequency("monthly");
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          decoration: (selectedFrequency == "monthly")
                              ? BoxDecoration(
                                  color: pink,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)))
                              : BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.3)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Monthly",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: (selectedFrequency == "monthly")
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Selected Extras',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      extraWidget("fridge", "Inside Fridge", true),
                      extraWidget("organise", "Organise", false),
                      extraWidget("blind", "Small Blind", false),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      extraWidget("garden", "Patio", false),
                      extraWidget("organise", "Grocery", true),
                      extraWidget("blind", "Curtains", false),
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void changeCleaningType(String type) {
    selectedType = type;
    setState(() {});
  }

  void changeFrequency(String frequency) {
    selectedFrequency = frequency;
    setState(() {});
  }

  Column extraWidget(String img, String name, bool isSelected) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(shape: BoxShape.circle, color: purple),
              child: Container(
                margin: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/image/icons/$img.png'),
                        fit: BoxFit.contain)),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: (isSelected == true)
                  ? Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: pink,
                        ),
                      ),
                    )
                  : Container(),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
