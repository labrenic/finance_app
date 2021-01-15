import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  int touchedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(''),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
                elevation: 0,
                child: SizedBox(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 5),
                            child: Text(
                              'Investing',
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 5),
                            child: Text(
                              '\$1234.56',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            icon: Icon(Icons.notifications_none),
                            onPressed: () {}),
                      )
                    ],
                  ),
                )
            ),
            SizedBox(
              height: 10,
            ),
            AspectRatio(
              aspectRatio: 1.3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        height: 18,
                      ),
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: PieChart(
                            PieChartData(
                                pieTouchData: PieTouchData(touchCallback: (pieTouchResponse) {
                                  setState(() {
                                    if (pieTouchResponse.touchInput is FlLongPressEnd ||
                                        pieTouchResponse.touchInput is FlPanEnd) {
                                      touchedIndex = -1;
                                    } else {
                                      touchedIndex = pieTouchResponse.touchedSectionIndex;
                                    }
                                  });
                                }),
                                borderData: FlBorderData(
                                  show: false,
                                ),
                                sectionsSpace: 0,
                                centerSpaceRadius: 40,
                                sections: showingSections()),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Watchlist',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                elevation: 5,
                child: SizedBox(
                  height: 260,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      ListTile(
                        visualDensity: VisualDensity(vertical: -2),
                        leading: FlutterLogo(),
                        title: Text('Sample Text1'),
                        subtitle: Text('BTC'),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$124.00'),
                            Text('+12.23%'),
                          ],
                        ),
                      ),
                      ListTile(
                        visualDensity: VisualDensity(vertical: -2),
                        leading: FlutterLogo(),
                        title: Text('Sample Text'),
                        subtitle: Text('BTC'),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$124.00'),
                            Text('+12.23%'),
                          ],
                        ),
                      ),
                      ListTile(
                        visualDensity: VisualDensity(vertical: -2),
                        leading: FlutterLogo(),
                        title: Text('Sample Text'),
                        subtitle: Text('BTC'),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$124.00'),
                            Text('+12.23%'),
                          ],
                        ),
                      ),
                      ListTile(
                        visualDensity: VisualDensity(vertical: -2),
                        leading: FlutterLogo(),
                        title: Text('Sample Text'),
                        subtitle: Text('BTC'),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$124.00'),
                            Text('+12.23%'),
                          ],
                        ),
                      ),
                      ListTile(
                        visualDensity: VisualDensity(vertical: -2),
                        leading: FlutterLogo(),
                        title: Text('Sample Text'),
                        subtitle: Text('BTC'),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$124.00'),
                            Text('+12.23%'),
                          ],
                        ),
                      ),
                      ListTile(
                        visualDensity: VisualDensity(vertical: -2),
                        leading: FlutterLogo(),
                        title: Text('Sample Text'),
                        subtitle: Text('BTC'),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$124.00'),
                            Text('+12.23%'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Top Movers',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 120,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          elevation: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ListTile(
                                title: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FlutterLogo(),
                                    ),
                                    Text(
                                      'Bitcoin',
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                subtitle: Center(child: Text('\$690.23')),
                              ),
                              Text(
                                '+49.27%',
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          elevation: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ListTile(
                                title: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FlutterLogo(),
                                    ),
                                    Text(
                                      'Bitcoin',
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                subtitle: Center(child: Text('\$690.23')),
                              ),
                              Text(
                                '+49.27%',
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          elevation: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ListTile(
                                title: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FlutterLogo(),
                                    ),
                                    Text(
                                      'Bitcoin',
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                subtitle: Center(child: Text('\$690.23')),
                              ),
                              Text(
                                '+49.27%',
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          elevation: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ListTile(
                                title: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FlutterLogo(),
                                    ),
                                    Text(
                                      'Bitcoin',
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                subtitle: Center(child: Text('\$690.23')),
                              ),
                              Text(
                                '+49.27%',
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          elevation: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ListTile(
                                title: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FlutterLogo(),
                                    ),
                                    Text(
                                      'Bitcoin',
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                subtitle: Center(child: Text('\$690.23')),
                              ),
                              Text(
                                '+49.27%',
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          elevation: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ListTile(
                                title: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FlutterLogo(),
                                    ),
                                    Text(
                                      'Bitcoin',
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                subtitle: Center(child: Text('\$690.23')),
                              ),
                              Text(
                                '+49.27%',
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      )
                    ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 25 : 16;
      final double radius = isTouched ? 60 : 50;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        default:
          return null;
      }
    });
  }


}

