import 'package:flutter/material.dart';
import 'package:flutter_spiritual_retreats/fade.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Spiritual Retreats',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int totalPage = 5;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
            page: 1,
            image: 'assets/images/two.jpg',
            title: 'Pusering Jagat Temple',
            description:
                'Spiritual retreat is time set apart to be in quiet, rest, and solitude with God. For generations, people have gone on spiritual retreats to encounter God and experience spiritual renewal.',
          ),
          makePage(
            page: 2,
            image: 'assets/images/one.jpg',
            title: 'Ulun Danu Temple',
            description:
                'Spiritual retreat is time set apart to be in quiet, rest, and solitude with God. For generations, people have gone on spiritual retreats to encounter God and experience spiritual renewal.',
          ),
          makePage(
            page: 3,
            image: 'assets/images/three.jpg',
            title: 'Ponjok Batu Temple',
            description:
                'Spiritual retreat is time set apart to be in quiet, rest, and solitude with God. For generations, people have gone on spiritual retreats to encounter God and experience spiritual renewal.',
          ),
          makePage(
            page: 4,
            image: 'assets/images/four.jpg',
            title: 'Uluwatu Temple',
            description:
                'Spiritual retreat is time set apart to be in quiet, rest, and solitude with God. For generations, people have gone on spiritual retreats to encounter God and experience spiritual renewal.',
          ),
          makePage(
            page: 5,
            image: 'assets/images/five.jpg',
            title: 'Penglipuran Village',
            description:
                'Spiritual retreat is time set apart to be in quiet, rest, and solitude with God. For generations, people have gone on spiritual retreats to encounter God and experience spiritual renewal.',
          ),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Fade(
                      2, Text(
                    page.toString(),
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),),
                  Text(
                    ' / ' + totalPage.toString(),
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Fade(
                      1,
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Fade(
                      1.5,
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          Text('4.0',
                              style:
                                  GoogleFonts.poppins(color: Colors.white70)),
                          Text(
                            '(2500)',
                            style: GoogleFonts.poppins(
                                color: Colors.white38, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Fade(
                      2,
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text(
                          description,
                          style: GoogleFonts.poppins(
                            color: Colors.white.withOpacity(.7),
                            height: 1.9,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Fade(
                      2.5,
                      Text(
                        'READ MORE',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
