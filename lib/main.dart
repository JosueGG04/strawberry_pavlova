import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Strawberry Pavlova app'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
            margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
            height: 300,
            // child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: SizedBox(
                    width: 300,
                    child: leftColumn,
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Image(
                    image: AssetImage('assets/images/strawberry_pavlova.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            )
            // )
            ),
      ),
    ));
  }
}

const titleText = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            'Strawberry Pavlova',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            overflow: TextOverflow.fade,
            textAlign: TextAlign.center,
          )),
    ]);

const description = 
      Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
            overflow: TextOverflow.fade,
            textAlign: TextAlign.center,
          ));

const stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, size: 20),
    Icon(Icons.star, size: 20),
    Icon(Icons.star, size: 20),
    Icon(Icons.star, size: 20),
    Icon(Icons.star, size: 20),
  ],
);

const reviews = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    stars,
    Text(
      '170 Reviews',
      overflow: TextOverflow.fade,
      textAlign: TextAlign.justify,
    ),
  ],
);

const iconList = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Column(
      children: [
        Icon(Icons.kitchen_outlined),
        SizedBox(height: 10),
        Text("PREP:"),
        Text("25 min"),
      ],
    ),
    Column(
      children: [
        Icon(Icons.timer_outlined),
        SizedBox(height: 10),
        Text("COOK:"),
        Text("1 hr"),
      ],
    ),
    Column(
      children: [
        Icon(Icons.restaurant),
        SizedBox(height: 10),
        Text("FEEDS:"),
        Text("4-6"),
      ],
    ),
  ],
);

final leftColumn = Container(
  padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Container(color: bgColor, child: titleText),
      Container(color: bgColor, child: description),
      Container(color: bgColor, child: reviews),
      Container(color: bgColor, child: iconList)
    ],
  ),
);

const bgColor = Colors.blueGrey;
