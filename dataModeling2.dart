// openWeather
// Current Weather Data -> By geographic coordinates
// URL :	https://openweathermap.org/
// sample URL : //https://api.openweathermap.org/data/2.5/weather?lat=37.532600&lon=127.024612&appid=KEY

import 'package:flutter/foundation.dart';

// Sample json Decode
Map<String, dynamic> sampleData = {
  'coord': {
    'lon': 127.02,
    'lat': 37.53
  },
  'weather': [
    {
      'id': 701,
      'main': "Mist",
      'description': "mist",
      'icon': "50d"
    }
  ],
  'base': "stations",
  'main': {
    'temp': 292.46,
    'feels_like': 292.69,
    'temp_min': 292.15,
    'temp_max': 293.15,
    'pressure': 1007,
    'humidity': 82
  },
  'visibility': 8000,
  'wind': {
    'speed': 2.6,
    'deg': 190
  },
  'clouds': {
    'all': 75
  },
  'dt': 1589604344,
  'sys': {
    'type': 1,
    'id': 8096,
    'country': "KR",
    'sunrise': 1589574119,
    'sunset': 1589625288
  },
  'timezone': 32400,
  'id': 6800516,
  'name': "Kŭmhosamga-dong",
  'cod': 200
};


class Modeling2{
final Map<String, dynamic> coord;
final List<Map<String, dynamic>> weather;
final String base;
final Map<String, num> main;
final int visibility;
final Map<String, num> wind;
final Map<String, num> clouds;
final num dt;
final Map<String, dynamic> sys;
final num timezone;
final num id;
final String name;
final num cod;

  Modeling2({
    @required this.coord,
    @required this.weather,
    @required this.base,
    @required this.main,
    @required this.visibility,
    @required this.wind,
    @required this.clouds,
    @required this.dt,
    @required this.sys,
    @required this.timezone,
    @required this.id,
    @required this.name,
    @required this.cod
  });

  factory Modeling2.toJson({@required Map<String, dynamic> json})
  => Modeling2(
    name: json['name'],
    id: json['id'],
    base: json['base'],
    clouds: json['clouds'],
    cod: json['cod'],
    coord: json['coord'],
    dt: json['dt'],
    main: json['main'],
    sys: json['sys'],
    timezone: json['timezone'],
    visibility: json['visibility'],
    weather: json['weather'],
    wind: json['wind']
  );
}

/// UI File
import 'package:datamodeling/modeling2.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: MyModelings(),
  )
);

class MyModelings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Map<String, dynamic> sampleMap = sampleData;
    Modeling2 modeling2 = Modeling2.toJson(json: sampleMap);

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text("제임쓰 Flutter")
            ),
            Center(
              child: Text(" - openWeather - ")
            ),
            Text("modeling2 : ${modeling2.coord.toString()}"),
            Text("modeling2 : ${modeling2.weather.toString()}"),
            Text("modeling2 : ${modeling2.base.toString()}"),
            Text("modeling2 : ${modeling2.main.toString()}"),
            Text("modeling2 : ${modeling2.visibility.toString()}"),
            Text("modeling2 : ${modeling2.weather.toString()}"),
            Text("modeling2 : ${modeling2.wind.toString()}"),
            Text("modeling2 : ${modeling2.clouds.toString()}"),
            Text("modeling2 : ${modeling2.dt.toString()}"),
            Text("modeling2 : ${modeling2.sys.toString()}"),
            Text("modeling2 : ${modeling2.timezone.toString()}"),
            Text("modeling2 : ${modeling2.id.toString()}"),
            Text("modeling2 : ${modeling2.name.toString()}"),
            Text("modeling2 : ${modeling2.cod.toString()}"),
          ],
        ),
      ),
    );
  }
}
