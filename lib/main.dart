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
        children: [
          Container(
            height: 30,
          ),
          TextButton(onPressed: (){},
              child: Text(
                'skip',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.blue
                  ),
              ),),
          Expanded(child:
          Container(
            height: MediaQuery.of(context).size.height / 3,
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: [
                Container(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.ac_unit_outlined,
                      size: 120,),
                      Text(
                        'If theyre there,well find em',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'SeatGeek brings together tickets from'
                            'hundreds of sites to save you time and'
                            'money',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Container (child: Column(
                children: <Widget>[
                Icon(Icons.flag,
                size: 120,),
                Text(
                'If theyre there,well find em',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                ),
                ),
                Text(
                'SeatGeek brings together tickets from'
                'hundreds of sites to save you time and'
                'money',
                style: TextStyle(
                fontSize: 15,
                ),
                ),
                ],
                ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Expanded(child:
                      Icon(Icons.backpack,
                        size: 120,),
                      ),

                      Text(
                        'If theyre there,well find em',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'SeatGeek brings together tickets from'
                            'hundreds of sites to save you time and'
                            'money',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ),
          SizedBox(height: 18,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              pageDot(0),
              pageDot(1),
              pageDot(2),
            ],
          ),

        ],
      ),
    );
  }
}