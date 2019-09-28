import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(119, 138, 80, 1),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 242, 197, 1),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 160),
              child: ListView(
                children: <Widget>[
                  TitleBar(),
                  SizedBox(height: 5),
                  NavBar(),
                  SizedBox(height: 10),
                  Image.asset('images/img_main_pumpkin.png'),
                  SizedBox(height: 10),
                  SubContent(),
                ],
              ),
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Center(
        child: Text(
          'Copyrights 2017 Vegetables cise / Design by Vegetables',
          style: kFooterText,
        ),
      ),
    );
  }
}

class SubContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                ),
                width: double.infinity,
                child: NavText(text: 'Vegetables'),
              ),
              SizedBox(height: 5),
              Row(
                children: <Widget>[
                  Image.asset('images/img_vegetables_pepper.png'),
                  SizedBox(width: 5),
                  Image.asset('images/img_vegetables_carrot.png'),
                  SizedBox(width: 5),
                  Image.asset('images/img_vegetables_corn.png'),
                ],
              )
            ],
          ),
        ),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                ),
                width: double.infinity,
                child: NavText(text: 'Contact'),
              ),
              SizedBox(height: 5),
              Container(
                color: Color.fromRGBO(247, 253, 186, 1),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'For any questions or suggestions about Vegetables, Vegetables Club or your',
                      style: kParagraphText,
                    ),
                    Text(
                      'online order you can contact Vegetables Customer Service by phone, email',
                      style: kParagraphText,
                    ),
                    Text(
                      'or post and we’ll be happy to help.',
                      style: kParagraphText,
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: 414,
                      height: 1,
                      color: Color.fromRGBO(125, 125, 125, 1),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'E-mail : Vegetables@aaabbccc.com',
                      style: kParagraphText,
                    ),
                    Text(
                      'PHONE : +886-123-456-789',
                      style: kParagraphText,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(3),
        ),
      ),
      child: Row(
        children: <Widget>[
          NavText(text: 'Home'),
          NavText(text: 'About Us'),
          NavText(text: 'Vegetables'),
          NavText(text: 'Online'),
          NavText(text: 'Contact'),
        ],
      ),
    );
  }
}

class TitleBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        Text(
          'Vegetables',
          style: kMainTitle,
        ),
        Container(
          child: Row(
            children: <Widget>[
              Image.asset('images/btn_facebook.png'),
              SizedBox(width: 10),
              Image.asset('images/btn_instagram.png'),
              SizedBox(width: 10),
              Container(
                width: 2,
                height: 30,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(width: 10),
              Button(text: 'LOGIN'),
              SizedBox(width: 10),
              Button(text: 'JOIN'),
            ],
          ),
        )
      ],
    );
  }
}

class Button extends StatelessWidget {
  Button({@required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColor,
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(3),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: kButtonText,
        ),
      ),
    );
  }
}

class NavText extends StatelessWidget {
  NavText({@required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      child: Text(
        text,
        style: kNavText,
      ),
    );
  }
}
