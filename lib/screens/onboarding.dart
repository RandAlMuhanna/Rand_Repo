import 'package:flutter/material.dart';
import 'package:news_app/pagemodel';
import 'package:news_app/screens/homescreen.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

class OnBoarding extends StatefulWidget {
  @override
  State<OnBoarding> createState() => _OnBoarding();
}

class _OnBoarding extends State<OnBoarding> {
  List<PageModel> pages = []; //كذا نكتب المصفوفة الفارغة

  ValueNotifier<int> _PageViewIndicator = ValueNotifier(0);

  void _addPages() {
    pages.add(PageModel('assets/images/pic1.jpeg', 'Welcome',
        '- Study: Chocolate Works Like Morphine on the Brain! -'));

    pages.add(PageModel('assets/images/pic2.jpeg', 'High quality',
        '- All you need is love. But a little chocolate now and then does not hurt -'));

    pages.add(PageModel('assets/images/pic3.jpeg', 'Perfection',
        '- Happiness. Simple as a box of chocolate - '));

    pages.add(PageModel('assets/images/pic4.jpeg', 'Delicious and Rich',
        '- Anything is good if it is made of chocolate -'));
  }

  @override
  Widget build(BuildContext context) {
    _addPages();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(
                          pages[index].image,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        pages[index].titels,
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 19, 19, 19)),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 55, right: 55, top: 55),
                        child: Text(
                          pages[index].captions,
                          style: TextStyle(
                              color: Color.fromARGB(255, 73, 72, 72),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: pages.length,
            onPageChanged: (index) {
              _PageViewIndicator.value = index;
            },
          ),
          Transform.translate(
            offset: Offset(0, 175),
            child: Align(
              alignment: Alignment.center,
              child: _displayPageIndicators(pages.length),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 45),
              child: Container(
                width: 350,
                height: 40,
                child: RaisedButton(
                    color: Color.fromARGB(255, 165, 92, 92),
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomeScreen();
                          },
                        ),
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _displayPageIndicators(int length) {
    return PageViewIndicator(
      pageIndexNotifier: _PageViewIndicator,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 10.0,
        color: Color.fromARGB(255, 100, 100, 100),
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 15.0,
          color: Color.fromARGB(255, 165, 92, 92),
        ),
      ),
    );
  }
}
