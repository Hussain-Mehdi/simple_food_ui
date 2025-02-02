import 'package:flutter/material.dart';
import 'package:simple_food_ui/httphelper/httphelper.dart';

class WeatherUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Material(
        child: Container(
            width: width,
            height: height,
            color: const Color(0xff131542),
            child: mainScreen(context, width, height)));
  }

  Widget mainScreen(BuildContext context, double width, double height) {
    return Container(
      child: Stack(
        children: [
          Positioned(
              top: 150,
              left: 0,
              right: 0,
              child: Hero(
                tag: "TAG",
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      "./images/weatherimages/27.png",
                    ),
                  )),
                ),
              )),
          Positioned(
              top: 590,
              left: 0,
              right: 0,
              child: Center(
                child: SizedBox(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text: "Weather ",
                        style: TextStyle(fontSize: 23),
                        children: [
                          TextSpan(
                            text: "News\n& Feeds",
                            style: TextStyle(
                                color: Color(0xffffd059),
                                fontWeight: FontWeight.w700),
                          )
                        ]),
                  ),
                ),
              )),
          const Positioned(
            top: 650,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "Sunshine is delicious, rain is refreshing\n wind braces us up, snow is exhilarating\n there is really no such thing as bad weather\n only different kinds of good weather.",
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 129, 129, 129),
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: 740,
            left: 0,
            right: 0,
            child: SizedBox(
              child: GestureDetector(
                onTap: () {
                  HttpHelper.request("");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => weatherDetail(context),
                      ));
                },
                child: Container(
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffffd059)),
                  child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 87, 87, 87),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<String> images = [
    './images/weatherimages/4.png',
    './images/weatherimages/6.png',
    './images/weatherimages/8.png',
    './images/weatherimages/13.png',
    './images/weatherimages/16.png',
    './images/weatherimages/26.png',
    './images/weatherimages/28.png',
    './images/weatherimages/30.png',
  ];

  Widget weatherDetail(BuildContext context) {
    return Material(
      color: const Color(0xff131542),
      child: Stack(
        children: [
          Positioned(
            top: 30,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
                const SizedBox(
                  width: 90,
                ),
                const Text(
                  "Weather Forcast",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Positioned(
            top: 100,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 250,
                width: 330,
                decoration: BoxDecoration(
                    color: const Color(0xff1a1c49),
                    borderRadius: BorderRadius.circular(15)),
                child: Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(40, 20, 20, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Today",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            "Sat,3 2023",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      top: 80,
                      left: 110,
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Stack(
                          fit: StackFit.loose,
                          children: [
                            Positioned(
                              top: 8,
                              child: Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.circle_outlined,
                                  color: Color(0xffffd059),
                                  size: 12,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "C",
                                style: TextStyle(
                                    fontSize: 30, color: Color(0xffffd059)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                        top: 80,
                        left: 30,
                        child: Text(
                          "30",
                          style: TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Hero(
                        tag: "TAG",
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(150, 0, 0, 10),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "./images/weatherimages/27.png"))),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 200,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_city,
                              color: Color(0xffffd059),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Pakistan, B-17 Islamabad",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 190, 190, 190)),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            top: 380,
            child: SizedBox(
              width: 250,
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Today",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Text(
                    "Tomorrow",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Text(
                    "Next 7 Days",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 400,
            child: SizedBox(
              height: 140,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return weatherCards(images[index]);
                },
              ),
            ),
          ),
          Positioned(
            top: 550,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: rainDetail(),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget weatherCards(String path) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xff23234e),
        ),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 35),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(path), fit: BoxFit.cover)),
            ),
            const Positioned(
              top: 60,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "10:50 AM",
                      style: TextStyle(color: Colors.white70, fontSize: 9),
                    ),
                    Text(
                      "26",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(top: 85, left: 30, child: celsiusIcon(12, 3)),
          ],
        ),
      ),
    );
  }

  Widget celsiusIcon(double cSize, double iconSize) {
    return SizedBox(
      width: 20,
      height: 20,
      child: Stack(
        fit: StackFit.loose,
        children: [
          Positioned(
            top: 2,
            left: 12,
            child: Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.circle_outlined,
                color: const Color(0xffffd059),
                size: iconSize,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "C",
              style: TextStyle(fontSize: cSize, color: const Color(0xffffd059)),
            ),
          ),
        ],
      ),
    );
  }

  Widget rainDetail() {
    return Stack(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Monday",
              style: TextStyle(
                  fontSize: 10, color: Color.fromARGB(255, 155, 155, 155)),
            ),
            Text(
              "Tuesday",
              style: TextStyle(
                  fontSize: 10, color: Color.fromARGB(255, 155, 155, 155)),
            ),
            Text(
              "Wednessday",
              style: TextStyle(
                  fontSize: 10, color: Color.fromARGB(255, 155, 155, 155)),
            ),
            Text(
              "Thursday",
              style: TextStyle(
                  fontSize: 10, color: Color.fromARGB(255, 155, 155, 155)),
            ),
          ],
        ),
        const Positioned(
          top: 170,
          left: 40,
          child: SizedBox(
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "10:30 AM",
                  style: TextStyle(
                      fontSize: 10, color: Color.fromARGB(255, 155, 155, 155)),
                ),
                Text(
                  "10:30 AM",
                  style: TextStyle(
                      fontSize: 10, color: Color.fromARGB(255, 155, 155, 155)),
                ),
                Text(
                  "10:30 AM",
                  style: TextStyle(
                      fontSize: 10, color: Color.fromARGB(255, 155, 155, 155)),
                ),
                Text(
                  "10:30 AM",
                  style: TextStyle(
                      fontSize: 10, color: Color.fromARGB(255, 155, 155, 155)),
                ),
                Text(
                  "10:30 AM",
                  style: TextStyle(
                      fontSize: 10, color: Color.fromARGB(255, 155, 155, 155)),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 30),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("./images/weatherimages/graph.png"),
                  fit: BoxFit.cover)),
        )
      ],
    );
  }
}
