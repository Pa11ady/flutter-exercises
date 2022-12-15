import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "Weather", style: TextStyle(color: Colors.black87)
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: (){},),
          iconTheme: IconThemeData(color: Colors.black54),
          actions: <Widget>[
            IconButton(onPressed: (){}, icon: Icon(Icons.settings))
          ], systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _headerImage(),
          SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _weatherDescription()
                  ],
                ),
              )
          )
        ],
      )
  );
}

Image _headerImage() {
  return Image(
    image: AssetImage("assets/img1.jpg"),
    fit: BoxFit.cover,
  );
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text("Sunday - June 11",
        style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold),
      ),
      Divider(),
      Text("temperatures increase from 20°C to 23°C and it is overcast"
          "In Moscow during June average daily high "
          "or mostly cloudy about 47% of the time.",
        style: TextStyle(color: Colors.black54),)
    ],
  );
}


