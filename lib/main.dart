import 'package:assignment/entity/HaveQuestion.dart';
import 'package:assignment/entity/Holding.dart';
import 'package:assignment/pointed_line.dart';
import 'package:assignment/queston_card.dart';
import 'package:assignment/shadow.dart';
import 'package:assignment/stackHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'holding_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String _title;

  @override
  initState() {
    _title = 'Snapshot';
  }

  int _selectedIndex = 0;
  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'Snapshot';
          }
          break;
        case 1:
          {
            _title = 'Holdings';
          }
          break;
        case 2:
          {
            _title = 'Investments';
          }
          break;
        case 3:
          {
            _title = 'Profile';
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String shadowTextName = 'Your holdings'.toUpperCase();
    List<HaveQuestion> listHaveQuestion = [
      HaveQuestion(imagePath: 'assets/svg/Chats.svg', text: 'Chat with Us'),
      HaveQuestion(imagePath: 'assets/svg/Question.svg', text: 'Read FAQs'),
      HaveQuestion(
          imagePath: 'assets/svg/EnvelopeSimple.svg', text: 'Email Us'),
      HaveQuestion(imagePath: 'assets/svg/Phone.svg', text: 'Call Us'),
    ];

    List<Holding> holdingCards = [
      Holding(
          color: [10, 161, 221, 1],
          fundName: 'Mutual Funds',
          fundValue: '1.69',
          fundDayChange: '45.5',
          fundPercentageChange: '18.77',
          investedAmount: '1.69',
          list: ['assets/svg/Shape.svg'],
          isProfit: true),
      Holding(
          color: [76, 175, 80, 1],
          fundName: 'Smart Deposits',
          fundValue: '2.45',
          fundDayChange: '55.5',
          fundPercentageChange: '8.77',
          investedAmount: '7.69',
          list: ['assets/svg/Shape.svg', 'assets/svg/add.svg'],
          isProfit: false),
      Holding(
          color: [255, 203, 0, 1],
          fundName: 'Digital Gold',
          fundValue: '5.45',
          fundDayChange: '54.5',
          fundPercentageChange: '5.77',
          investedAmount: '43.6',
          list: [
            'assets/svg/Shape.svg',
          ],
          isProfit: true),
      Holding(
          color: [10, 161, 221, 1],
          fundName: 'Mutual Funds',
          fundValue: '1.69',
          fundDayChange: '45.5',
          fundPercentageChange: '18.77',
          investedAmount: '1.69',
          list: ['assets/svg/Shape.svg'],
          isProfit: true),
      Holding(
          color: [76, 175, 80, 1],
          fundName: 'Smart Deposits',
          fundValue: '2.45',
          fundDayChange: '55.5',
          fundPercentageChange: '8.77',
          investedAmount: '7.69',
          list: ['assets/svg/Shape.svg'],
          isProfit: false),
    ];

    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 70 + 1,
          title: Text(_title),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(51, 0, 153, 1),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () => {print(">>>>>>>>")},
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: SvgPicture.asset('assets/svg/cart.svg'),
              ),
            )
          ],
        ),
        bottomSheet: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment(1, 1),
              colors: <Color>[
                Color.fromRGBO(87, 127, 242, 0),
                Color.fromRGBO(87, 127, 242, 1),
                Color.fromRGBO(87, 127, 242, 0),
              ],
              tileMode: TileMode.mirror,
            ),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          alignment: Alignment.centerLeft,
          width: MediaQuery.of(context).size.width - 20,
          height: 2,
          child: CustomPaint(
            painter: PointedLinePainter(width - 2 * 10),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromRGBO(240, 244, 255, 1),
          items: [
            BottomNavigationBarItem(
              label: 'snapshot',
              icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _selectedIndex == 0
                      ? SvgPicture.asset(
                          'assets/svg/Snapshot-white.svg',
                          color: Color.fromRGBO(51, 102, 255, 1),
                        )
                      : SvgPicture.asset('assets/svg/Snapshot.svg')),
            ),
            BottomNavigationBarItem(
              label: 'holdings',
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _selectedIndex == 1
                    ? SvgPicture.asset('assets/svg/Holdings-white.svg',
                        color: Color.fromRGBO(51, 102, 255, 1))
                    : SvgPicture.asset(
                        'assets/svg/Holdings.svg',
                      ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'investments',
              icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _selectedIndex == 2
                      ? SvgPicture.asset(
                          'assets/svg/Investments-white.svg',
                          color: Color.fromRGBO(51, 102, 255, 1),
                        )
                      : SvgPicture.asset(
                          'assets/svg/Investments.svg',
                        )),
            ),
            BottomNavigationBarItem(
              label: 'profile',
              icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _selectedIndex == 3
                      ? SvgPicture.asset(
                          'assets/svg/Profile-white.svg',
                          color: Color.fromRGBO(51, 102, 255, 1),
                        )
                      : SvgPicture.asset(
                          'assets/svg/Profile.svg',
                        )),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromRGBO(51, 102, 255, 1),
          showSelectedLabels: true,
          unselectedFontSize: 12,
          selectedIconTheme:
              const IconThemeData(color: Color.fromRGBO(51, 102, 255, 1)),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
          selectedFontSize: 12,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
          unselectedItemColor: const Color.fromRGBO(117, 117, 117, 1),
          onTap: _onItemTapped,
        ),
        backgroundColor: const Color.fromRGBO(240, 244, 255, 1),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const StackHeader(),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 64.0),
                  child: ShadowText(
                    letterSpacing: 1.5,
                    color: const Color.fromRGBO(51, 102, 255, 1),
                    shadowTextName: shadowTextName,
                    size: 16,
                  ),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    return HoldingCard(holding: holdingCards[index]);
                  },
                  itemCount: holdingCards.length,
                  shrinkWrap: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16, bottom: 24, top: 16),
                  child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                          backgroundBlendMode: BlendMode.srcOver,
                          borderRadius: BorderRadius.circular(16),
                          color: const Color.fromRGBO(214, 224, 255, 1),
                          border: Border.all(
                              color: const Color.fromRGBO(255, 255, 255, 0.13),
                              width: 1,
                              style: BorderStyle.solid),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(191, 202, 217, 0.9),
                              offset: Offset(4, 4),
                              blurRadius: 4,
                              spreadRadius: 0,
                              blurStyle: BlurStyle.normal,
                            ),
                            BoxShadow(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                offset: Offset(-4, -4),
                                blurRadius: 4,
                                spreadRadius: 0,
                                blurStyle: BlurStyle.normal),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'VIEW ALL TRANSACTIONS',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(51, 102, 255, 1),
                                  letterSpacing: 0.1),
                            ),
                            SvgPicture.asset('assets/svg/chevron.left.svg')
                          ],
                        ),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16, bottom: 8.0),
                  child: ShadowText(
                    color: Color.fromRGBO(51, 102, 255, 1),
                    shadowTextName: 'Have questions?',
                    size: 10,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 8),
                        child: SizedBox(
                          width: 100,
                          child: HaveQuestonCard(
                              isZeroIndex: index == 0 ? true : false,
                              listHaveQuestion: listHaveQuestion[index]),
                        ),
                      );
                    },
                    itemCount: listHaveQuestion.length,
                    shrinkWrap: true,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
