import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(Blackhephaestus17
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFFFAFAFA),

      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  // Profile Picture
                  Expanded(
                      child: ReusableCard(
                    decorationImage: DecorationImage(
                        image: AssetImage('assets/images/pic1.jpg'),
                        fit: BoxFit.fill),
                  )),
                  // Name
                  Expanded(
                      child: ReusableCard(
                    reusableCardChild: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Somto Achiamani',
                              style: TextStyle(
                                fontSize: 32,
                                fontFamily: 'Nexa',
                                fontWeight: FontWeight.bold,
                              )),
                          Text('@bountyforager', style: contentText),
                        ],
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              // About Section
              child: ReusableCard(
                reusableCardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text('About', style: headerText),
                    SizedBox(height: 5),
                    Text(
                        'Mobile developer, writer, aspiring artist, Somto is a creative that explores different realms to bring a concept from the plane of possibility into a plane of existence. He goes by the one philosophy that \"Life is good, but it can be better\"',
                        style: contentText),
                    SizedBox(height: 20),

                    //Contact Section
                    Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              child: ReusableCard(
                                reusableCardChild: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Contact Me', style: headerText),
                                    SizedBox(height: 5),
                                    Text('Email', style: subHeaderText),
                                    SizedBox(height: 5),
                                    Text('bountforager@gmail.com',
                                        style: contentText),
                                    SizedBox(height: 50),
                                    Text('Phonenumber', style: subHeaderText),
                                    SizedBox(height: 5),
                                    Text('08089300456', style: contentText),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: ReusableCard(
                                reusableCardChild: Column(
                                  children: [
                                    Expanded(
                                      child: ReusableCard(
                                        color: Color(0xFFF08D55),
                                        reusableCardChild: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 40, 10, 0),
                                          child: Column(
                                            children: [
                                              Text('Github',
                                                  style: subHeaderText),
                                              Text('@bountyforager',
                                                  style: contentText),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ReusableCard(
                                        color: Color(0xFFA5A5A5),
                                        reusableCardChild: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 40, 10, 0),
                                          child: Column(
                                            children: [
                                              Text('Twitter',
                                                  style: subHeaderText),
                                              Text('@_thelazybaron',
                                                  style: contentText),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

//Refactored Card Widget
class ReusableCard extends StatelessWidget {
  // ignore: non_constant_identifier_names
  ReusableCard({this.reusableCardChild, this.color, this.decorationImage});
  final Widget reusableCardChild;
  final Color color;
  final DecorationImage decorationImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: color,
          image: decorationImage,
          borderRadius: BorderRadius.all(Radius.circular(35))),
      child: reusableCardChild,
    );
  }
}

//Header Font
const headerText = TextStyle(
  fontSize: 20,
  fontFamily: 'Nexa',
  fontWeight: FontWeight.bold,
  letterSpacing: 0.04,
);

//Subheader Font
const subHeaderText = TextStyle(
  fontSize: 18,
  fontFamily: 'Nexa',
  fontWeight: FontWeight.bold,
);

//Content Font
const contentText = TextStyle(
  fontSize: 17,
  fontFamily: 'Nexa',
  fontWeight: FontWeight.w700,
  color: Color(0xFF5F5754),
);
