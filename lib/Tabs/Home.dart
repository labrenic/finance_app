import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
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
            AspectRatio(
              aspectRatio: 1.70,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                    color: Color(0xff232d37)),
                child: LineChart(
                  showAvg ? avgData() : mainData(),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 60,
                  height: 34,
                  child: FlatButton(
                    onPressed: (){},
                    child: Text(
                      '1D',
                    ),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 34,
                  child: FlatButton(
                    onPressed: (){},
                    child: Text(
                      '1W',
                    ),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 34,
                  child: FlatButton(
                    onPressed: (){},
                    child: Text(
                      '1M',
                    ),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 34,
                  child: FlatButton(
                    onPressed: (){},
                    child: Text(
                      '3M',
                    ),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 34,
                  child: FlatButton(
                    onPressed: (){},
                    child: Text(
                      '1Y',
                    ),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 34,
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        showAvg = !showAvg;
                      });
                    },
                    child: Text(
                      'AVG',
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Stocks',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            ListTile(
                title: Text('Sample Text1'),
                subtitle: Text('BTC'),
                trailing: Text(
                    '+3.64',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 18)
                )
            ),

            ListTile(

                title: Text('Sample Text1'),
                subtitle: Text('BTC'),
                trailing: Text(
                    '+3.64',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 18)
                )
            ),

            ListTile(

                title: Text('Sample Text1'),
                subtitle: Text('BTC'),
                trailing: Text(
                    '+3.64',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 18)
                )
            ),
            ListTile(

                title: Text('Sample Text1'),
                subtitle: Text('BTC'),
                trailing: Text(
                    '+3.64',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 18)
                )
            ),
            ListTile(

                title: Text('Sample Text1'),
                subtitle: Text('BTC'),
                trailing: Text(
                    '+3.64',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 18)
                )
            ),
            ListTile(
                title: Text('Sample Text1'),
                subtitle: Text('BTC'),
                trailing: Text(
                    '+3.64',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 18)
                )
            )
          ],
        ),
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: false,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: false,
          reservedSize: 22,
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: false,
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData:
      FlBorderData(show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: gradientColors.map((color) => color.withOpacity(0.3))
                .toList(),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: false,
        drawHorizontalLine: false,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: false,
          reservedSize: 22,
        ),
        leftTitles: SideTitles(
          showTitles: false,
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData:
      FlBorderData(show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(
                0.2),
            ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(
                0.2),
          ],
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(show: true, colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)
                .withOpacity(0.1),
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)
                .withOpacity(0.1),
          ]),
        ),
      ],
    );
  }
}


