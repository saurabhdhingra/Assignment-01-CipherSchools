import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipher/model/carouselInfo.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

List<CarouselInfo> carouselList = [
  CarouselInfo("Projects", "assets/info1.png",
      "Get the hands-on experience with real-time projects guided by expert mentors!"),
  CarouselInfo("Mentors", "assets/info2.png",
      "Start learning from the mentors coming from giant corporations like Microsoft, Google, Amazon, Paypal, etc!"),
  CarouselInfo("Earn CipherPoints", "assets/info3.png",
      "Earn exclusive rewards by developing your skills with us!")
];

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        shadowColor: Theme.of(context).colorScheme.secondary,
        elevation: 5,
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.03,
              child: Image.asset('assets/icon.png'),
            ),
            SizedBox(width: width * 0.01),
            Text("CipherSchools",
                style:
                    TextStyle(color: Theme.of(context).colorScheme.secondary))
          ],
        ),
        actions: [
          Icon(
            Icons.sort,
            size: width * 0.05,
            color: Theme.of(context).colorScheme.secondary,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.04),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Welcome to ",
              style: TextStyle(
                fontSize: width * 0.09,
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
              children: const [
                TextSpan(
                  text: "the \nFuture",
                  style: TextStyle(
                    color: Color.fromRGBO(242, 145, 47, 1),
                  ),
                ),
                TextSpan(text: " of Learning!")
              ],
            ),
          ),
          SizedBox(height: height * 0.02),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Start Learning by best creators for\n",
              style: TextStyle(
                fontSize: width * 0.05,
                color: Theme.of(context).colorScheme.secondary,
              ),
              children: const [
                TextSpan(
                  text: "absolutely Free",
                  style: TextStyle(
                    color: Color.fromRGBO(242, 145, 47, 1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.02),
          SizedBox(
            height: height * 0.05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.24,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: CircleAvatar(
                          radius: height * 0.025,
                          backgroundColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          child: CircleAvatar(
                            radius: height * 0.021,
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiary,
                            backgroundImage:
                                const AssetImage('assets/mentor1.png'),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: height * 0.025,
                          backgroundColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          child: CircleAvatar(
                            radius: height * 0.021,
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiary,
                            backgroundImage:
                                const AssetImage('assets/mentor2.png'),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          radius: height * 0.025,
                          backgroundColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          child: CircleAvatar(
                            radius: height * 0.021,
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiary,
                            backgroundImage:
                                const AssetImage('assets/mentor3.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: width * 0.02),
                SizedBox(
                  width: width * 0.15,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "50+",
                        style: TextStyle(
                          fontSize: width * 0.04,
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Mentors",
                        style: TextStyle(
                          fontSize: width * 0.035,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                ),
                const VerticalDivider(color: Colors.grey),
                SizedBox(
                  width: width * 0.45,
                  child: Column(
                    children: [
                      Text(
                        "4.8/5",
                        style: TextStyle(
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color.fromRGBO(242, 145, 47, 1),
                          ),
                          const Icon(
                            Icons.star,
                            color: Color.fromRGBO(242, 145, 47, 1),
                          ),
                          const Icon(
                            Icons.star,
                            color: Color.fromRGBO(242, 145, 47, 1),
                          ),
                          const Icon(
                            Icons.star,
                            color: Color.fromRGBO(242, 145, 47, 1),
                          ),
                          const Icon(
                            Icons.star_half,
                            color: Color.fromRGBO(242, 145, 47, 1),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text(
                            "Ratings",
                            style: TextStyle(
                              fontSize: width * 0.035,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: height * 0.03),
          Container(
            height: height * 0.05,
            width: width * 0.55,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(242, 145, 47, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Start Learning Now",
                  style: TextStyle(
                    fontSize: width * 0.04,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Theme.of(context).scaffoldBackgroundColor,
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.4,
            width: width * 0.9,
            child: CarouselSlider(
              items: carouselList
                  .map((item) => carouselWidget(height, width, item))
                  .toList(),
              options: CarouselOptions(
                pageViewKey: const PageStorageKey("carousel"),
                autoPlay: true,
                aspectRatio: 1,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget carouselWidget(double height, double width, CarouselInfo info) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.02),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: const BorderRadius.all(
            Radius.circular(35),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(width * 0.04, 0, 0, 0),
                  child: CircleAvatar(
                    radius: width * 0.1,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    backgroundImage: AssetImage(info.icon),
                  ),
                ),
                ClipPath(
                  clipper: Clip1Clipper(),
                  child: Container(
                    height: height * 0.05,
                    width: width * 0.3,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(109, 76, 43, 1),
                          Color.fromRGBO(242, 145, 47, 1),
                        ],
                        stops: [0, 0.15],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Free",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: height * 0.03),
            Padding(
              padding: EdgeInsets.fromLTRB(width * 0.04, 0, 0, 0),
              child: Text(
                info.title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  fontSize: width * 0.09,
                ),
              ),
            ),
            SizedBox(height: height * 0.01),
            Padding(
              padding: EdgeInsets.fromLTRB(width * 0.04, 0, 0, 0),
              child: Text(
                info.description,
                style: TextStyle(
                  fontSize: width * 0.04,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Clip1Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width / 5, size.height / 2);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
