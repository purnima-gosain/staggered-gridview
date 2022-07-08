import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  List<Widget> itemList = [
    Image.asset("assets/images/lady6.jpg"),
    Column(
      children: [
        const Text(
          "special",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
        ),
        Image.asset("assets/images/lady7.jpg")
      ],
    ),
    Image.asset("assets/images/lady8.jpg"),
    Image.asset("assets/images/lady5.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "Every",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20, bottom: 10),
              child: Center(
                child: Text(
                  "product is",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                ),
              ),
            ),
            StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 0,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2.6,
                  child: Image.asset("assets/images/lady6.jpg",
                      fit: BoxFit.contain),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2.6,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "special",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 30),
                      ),
                      SizedBox(height: 5),
                      Expanded(
                        child: Image.asset(
                          "assets/images/lady2.jpg",
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2.6,
                  child: Image.asset(
                    "assets/images/l.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2.5,
                  child: Image.asset(
                    "assets/images/lady5.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 240,
                child: SwipeableButtonView(
                  onFinish: () {},
                  onWaitingProcess: () {},
                  activeColor: const Color.fromARGB(255, 241, 240, 240),
                  buttonWidget: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 4,
                              blurRadius: 2.5)
                        ]),
                    child: const CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 18,
                        )),
                  ),
                  buttonText: 'Swipe to see',
                  buttontextstyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
