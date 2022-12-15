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
                    _weatherDescription(),
                    Divider(),
                    _temperature(),
                    Divider(),
                    _temperatureForecast(),
                    Divider(),
                    _footerRatings()
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
      Text("The Moscow weather will be mostly clear with a few low clouds. "
          "Probability of precipitation 0%. Air pressure normal "
          "Air temperature  20°C. Gentle winds (3—4 km/h)",
        style: TextStyle(color: Colors.black54),)
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
              Icons.wb_sunny,
              color: Colors.yellow
          ),
        ],
      ),
      SizedBox(width: 16.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("20°C Clear", style: TextStyle(color: Colors.deepPurple),)
            ],
          ),
          Row(
            children: <Widget>[
              Text("Moscow region, Moscow", style: TextStyle(color: Colors.grey),)
            ],
          )
        ],
      ),
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10.0,
    children:
    List.generate(7, (int index) {
      return Chip(
        label: Text(
          '${index + 19}°C',
          style: TextStyle(fontSize: 15.0),
        ),
        avatar: Icon(
            Icons.wb_sunny,
            color: Colors.yellow
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: Colors.grey)
        ),
        backgroundColor: Colors.grey.shade100,
      );
    }),
  );
}

Row _footerRatings() {
  var stars = Row(
    children: <Widget>[
      Icon(Icons.star, size: 15.0, color: Colors.yellow[500]),
      Icon(Icons.star, size: 15.0, color: Colors.yellow[500]),
      Icon(Icons.star, size: 15.0, color: Colors.yellow[500]),
      Icon(Icons.star_border, size: 15.0, color: Colors.yellow[500]),
      Icon(Icons.star_border, size: 15.0, color: Colors.yellow[500])
    ],
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Text("Info with weather.com", style: TextStyle(fontSize: 15)),
      stars
    ],
  );
}


