import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BInace App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xff572CD8),
        elevation: 0.0,
        actions: <Widget>[
          Icon(
            Icons.account_circle,
            size: 40,
          )
        ],
        leading: Icon(Icons.menu),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: Color(0xff572CD8),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      " \$ 25,000",
                      textScaleFactor: 2,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text("Total Balance",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Income", style: TextStyle(color: Colors.white)),
                      Text("OutCome",
                          style: TextStyle(color: Color(0xffFF7D3B))),
                    ],
                  ),
                )
              ],
            ),
          ),
          SavingAccountWidget(),
          FinancialCushionWidget(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Transactions",
                  style: TextStyle(color: Color(0xff572CD8)),
                ),
                Text("All", style: TextStyle(color: Color(0xff572CD8))),
              ],
            ),
          ),
          Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xff572CD8),
                      ),
                      title: Text(
                        "Mc' donald",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "20-20-20",
                        style: TextStyle(color: Color(0xffA490E0)),
                      ),
                      trailing: Text(
                        "-22,50",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      color: Color(0xffEBE6FB),
                    );
                  },
                  itemCount: 2))
        ],
      ),
    );
  }
}

class SavingAccountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Color(
              0xffA490E0,
            ),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(color: Color(0xffebe6fb), spreadRadius: 2)
          ],
        ),
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Container(
                child: CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 5.0,
                  animation: true,
                  percent: 0.25,
                  center: new Text(
                    "25%",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Color(0xff572CD8)),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Color(0xffFF7D3B),
                  backgroundColor: Color(0xffddd5f7),
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Savings Account",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff5d4fd8)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text("Déposit",
                                style: TextStyle(
                                    fontSize: 15.0, color: Color(0xffddd5f7))),
                            Text("\$5,450",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Colors.black)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text("Rate",
                                style: TextStyle(
                                    fontSize: 15.0, color: Color(0xffddd5f7))),
                            Text("+3,50%",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Colors.black)),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FinancialCushionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffFF7D3B),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Color(
              0xffFF7D3B,
            ),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(color: Color(0xffFF7D3B), spreadRadius: 2)
          ],
        ),
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Container(
                child: CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 5.0,
                  animation: true,
                  percent: 0.50,
                  center: new Text(
                    "50%",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.white),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.white,
                  backgroundColor: Color(0xffF4671F),
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Financial Cushion",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text("Déposit",
                                style: TextStyle(
                                    fontSize: 15.0, color: Color(0xffddd5f7))),
                            Text("\$ 12,350",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text("Rate",
                                style: TextStyle(
                                    fontSize: 15.0, color: Color(0xffddd5f7))),
                            Text("+2,80%",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Colors.white)),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
