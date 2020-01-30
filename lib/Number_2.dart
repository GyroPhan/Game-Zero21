import 'package:flutter/material.dart';
import 'dart:math';

import 'package:todo_code4fun/loss.dart';

class Number_2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Number_2_State();
  }
}

class Number_2_State extends State<Number_2> {
  int so_1 = 5;
  int so_2 = 5;
  int cong = 10;
  int gt_dau_1 = 0;
  int gt_dau_2 = 1;

  int diem = 0;

  void dau_1() {
    var rng = new Random();
    for (var i = 0; i < 1; i++) {
      gt_dau_1 = rng.nextInt(2);
    }
    ;
  }

  void dau_2() {
    var rng = new Random();
    for (var i = 0; i < 1; i++) {
      gt_dau_2 = rng.nextInt(2);
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("NUMBER 2"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            "${diem}",
            style: TextStyle(fontSize: 70),
          ),
          Text(
            "${cong}",
            style: TextStyle(fontSize: 100),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                child: gt_dau_1 == 0
                    ? Text(
                        "+ ${so_1}",
                        style: TextStyle(fontSize: 70),
                      )
                    : Text(
                        "- ${so_1}",
                        style: TextStyle(fontSize: 70),
                      ),
                onTap: () {
                  if (cong < 20 && cong > 0) {
                    setState(() {
                      diem = diem + 1;

                      gt_dau_1 == 0 ? cong = cong + so_1 : cong = cong - so_1;
                      var rng = new Random();
                      for (var i = 0; i < 1; i++) {
                        so_1 = rng.nextInt(10);
                      }
                      ;
                    });
                    dau_1();
                  } else {
                    setState(() {
                      so_1 = 5;
                      so_2 = 5;
                      cong = 10;
                      gt_dau_1 = 0;
                      gt_dau_2 = 1;
                      diem = 0;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Loss()),
                    );
                  }
                  ;
                },
              ),
              GestureDetector(
                child: gt_dau_2 == 0
                    ? Text(
                        "+ ${so_2}",
                        style: TextStyle(fontSize: 70),
                      )
                    : Text(
                        "- ${so_2}",
                        style: TextStyle(fontSize: 70),
                      ),
                onTap: () {
                  if (cong < 20 && cong > 0) {
                    setState(() {
                      diem = diem + 1;
                      gt_dau_2 == 0 ? cong = cong + so_2 : cong = cong - so_2;
                      var rng = new Random();
                      for (var i = 0; i < 1; i++) {
                        so_2 = rng.nextInt(10);
                      }
                      ;
                    });
                    dau_2();
                  } else {
                    setState(() {
                       so_1 = 5;
                       so_2 = 5;
                       cong = 10;
                       gt_dau_1 = 0;
                       gt_dau_2 = 1;
                       diem = 0;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Loss()),
                    );
                  }
                  ;
                },
              ),
            ],
          ),
        ],
      )),
    );
  }
}
