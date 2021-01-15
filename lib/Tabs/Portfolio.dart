import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home'),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 15,
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
            SizedBox(
              height: 10,
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
}
