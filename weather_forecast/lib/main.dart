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
              title: Text('Weather Forcast',
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
        SizedBox(height: 10.0),
        _cityDetail(),
        SizedBox(height: 10.0),
        _temperatureDetail(),
        SizedBox(height: 10.0),
        _extraWeatherDetail(),
        SizedBox(height: 20.0),
        Text('7-DAY WEATHER FORECAST',
            style: TextStyle(color: Colors.white, fontSize: 16)),
        SizedBox(height: 10.0),
        _dayWeatherForecast()
      ],
    ),
  );
}

Widget _cityDetail() {
  return Container();
}

Widget _temperatureDetail() {
  return Container();
}

Widget _extraWeatherDetail() {
  return Container();
}

Widget _dayWeatherForecast() {
  return Container();
}
