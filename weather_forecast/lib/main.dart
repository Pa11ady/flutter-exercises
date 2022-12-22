import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              bottomOpacity: 0.0,
              elevation: 0.0,
              title: Text('Weather Forecast',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600)),
              centerTitle: true,
              backgroundColor: Colors.redAccent,
            ),
            backgroundColor: Colors.redAccent,
            body: _buildBody()));
  }
}

Widget _buildBody() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TextField(
          obscureText: false,
          decoration: InputDecoration(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              border: InputBorder.none,
              label: Text(
                'Enter City Name',
                style: TextStyle(color: Colors.white),
              )),
        ),
        SizedBox(height: 20.0),
        _cityDetail(),
        SizedBox(height: 20.0),
        _temperatureDetail(),
        SizedBox(height: 20.0),
        _extraWeatherDetail(),
        SizedBox(height: 40.0),
        Text('7-DAY WEATHER FORECAST',
            style: TextStyle(color: Colors.white, fontSize: 16.0)),
        SizedBox(height: 5.0),
        _dayWeatherForecast()
      ],
    ),
  );
}

Widget _cityDetail() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Murmansk Oblast, RU',
            style: TextStyle(color: Colors.white, fontSize: 32.0)),
        SizedBox(height: 10.0),
        Text('Friday, Mar 20, 2020',
            style: TextStyle(color: Colors.white, fontSize: 20.0))
      ],
    ),
  );
}

Widget _temperatureDetail() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.white,
            size: 60.0,
          )
        ]),
        SizedBox(width: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('14 °F',
                    style: TextStyle(color: Colors.white, fontSize: 35.0))
              ],
            ),
            Row(
              children: <Widget>[
                Text('LIGTH SNOW',
                    style: TextStyle(color: Colors.white, fontSize: 20.0))
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget _extraWeatherDetail() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 30.0,
            ),
            SizedBox(height: 5),
            Text('5', style: TextStyle(color: Colors.white, fontSize: 20.0)),
            Text('km/hr', style: TextStyle(color: Colors.white, fontSize: 14.0))
          ],
        ),
        Column(
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 30.0,
            ),
            SizedBox(height: 5),
            Text('3', style: TextStyle(color: Colors.white, fontSize: 20.0)),
            Text('%', style: TextStyle(color: Colors.white, fontSize: 14.0))
          ],
        ),
        Column(
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 30.0,
            ),
            SizedBox(height: 5),
            Text('20', style: TextStyle(color: Colors.white, fontSize: 20.0)),
            Text('%', style: TextStyle(color: Colors.white, fontSize: 14.0))
          ],
        )
      ],
    ),
  );
}

Widget _dayWeatherForecast() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      //margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 120.0,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _listElement('Monday', 13, Icons.ac_unit),
          _listElement('Tuesday', 12, Icons.sunny_snowing),
          _listElement('Wednesday', 10, Icons.sunny_snowing),
          _listElement('Thursday', 11, Icons.sunny_snowing),
          _listElement('Friday', 14, Icons.sunny),
          _listElement('Saturday', 15, Icons.ac_unit),
          _listElement('Sunday', 16, Icons.sunny),
        ],
      ),
    ),
  );
}

Widget _listElement(String day, int temperature, IconData icon) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      width: 140.0,
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(day, style: TextStyle(color: Colors.white, fontSize: 25.0)),
          SizedBox(height: 8),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$temperature °F',
                  style: TextStyle(color: Colors.white, fontSize: 30.0)),
              SizedBox(width: 5.0),
              Icon(
                icon,
                color: Colors.white,
                size: 30.0,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
