import 'package:WeatherApp/components/WeatherHours.dart';
import 'package:WeatherApp/models/Weather.dart';
import 'package:flutter/widgets.dart';

import 'WeatherCard.dart';

class MainScreenWrapper extends StatelessWidget {

  final Weather weather;

  const MainScreenWrapper({Key key, this.weather})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(children: [
        Text(
          weather.cityName,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Text(
            '${weather.description}'),
        Spacer(),
        WeatherCard(
          title: "Now",
          temperature: weather.temperature,
          iconCode: weather.iconCode,
          temperatureFontSize: 64,
          iconScale: 1,
        ),
        Spacer(),
      ]),
    );
  }
}
