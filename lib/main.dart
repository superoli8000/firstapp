import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Ollie(),
));

class Ollie extends StatefulWidget {
  @override
  _OllieState createState() => _OllieState();
}

class _OllieState extends State<Ollie> {

  int coollvl = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[550],
      appBar: AppBar(
        title: Text('Ollie ID'),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              coollvl += 1;
            });
          },
            child: Icon(Icons.add),
            backgroundColor: Colors.red[500],

        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('ols/ollier.jpg'),
                    radius: 40.0,
                  ),
                ),
                Divider(
                  height: 60.0,
                  color: Colors.grey[800],
                ),
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing:2.0,
                  ),
                ),
                SizedBox(height:10.0),
                Text(
                  'Ollieman',
                  style: TextStyle(
                    color: Colors.blue,
                    letterSpacing:2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  'Current coolness level',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing:2.0,
                  ),
                ),
                SizedBox(height:10.0),
                Text(
                  '$coollvl',
                  style: TextStyle(
                    color: Colors.blue,
                    letterSpacing:2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: 10.0),
                    Text(
                        'Ollieman123@gmail.com',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 18.0,
                          letterSpacing: 1.0,

                        )
                    ),
                  ],
                ),
              ],
            )) );
  }
}
