import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyHomePage(),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  MyHomePage();
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _selectedIndex = 0;
  final _controller = PageController();



  Widget pageDot(int page) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: page == _selectedIndex ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
          Container(
            height: 30,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'skip',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Expanded(
            child: Container(
              child: PageView(
                  controller: _controller,
                  onPageChanged: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  children: [
                    Container(
                      child: Column(children: <Widget>[
                        Expanded(
                          child: Icon(
                            Icons.flag,
                            size: 200,
                          ),
                        ),
                        Text(
                          "If they're there,we'll find 'em",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'SeatGeek brings together tickets from '
                          '\nhundreds of sites to save you time and '
                          '\nmoney.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.5,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                      ]),
                    ),
                    //ここまでが１ページ
                    Container(
                      child: Column(children: <Widget>[
                        Expanded(
                          child: Icon(
                            Icons.mail,
                            size: 200,
                          ),
                        ),
                        Text(
                          "If they're there,we'll find 'em",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'SeatGeek brings together tickets from '
                          '\nhundreds of sites to save you time and '
                          '\nmoney.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.5,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                      ]),
                    ),
                    //ここまでが2ページ
                    Container(
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Icon(
                              Icons.backpack,
                              size: 200,
                            ),
                          ),

                          Text(
                            "If they're there,we'll find 'em",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'SeatGeek brings together tickets from '
                            '\nhundreds of sites to save you time and '
                            '\nmoney.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.5,
                              color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                ])),
          ),
          //ここまでが３ページ

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        pageDot(0),
                        pageDot(1),
                        pageDot(2),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Log in',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]

          ));
  }
}