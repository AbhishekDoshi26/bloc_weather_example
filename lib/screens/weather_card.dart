import 'package:bloc_weather_example/bloc/weather_bloc.dart';
import 'package:bloc_weather_example/screens/constants.dart';
import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final WeatherLoadedState state;
  WeatherCard({this.state});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: new BorderSide(color: Colors.blue, width: 3.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.white60,
      elevation: 10.0,
      shadowColor: Colors.yellow,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'City: ' + state.weather.city.toString() + ' 🏡',
              style: weatherCardTextStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Current Temperature: ' + state.weather.temperature.toString(),
              style: weatherCardTextStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Today\'s Maximum: ' + state.weather.todayMax.toString(),
              style: weatherCardTextStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Today\'s Minimum: ' + state.weather.todayMin.toString(),
              style: weatherCardTextStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Yesterday\'s Maximum: ' + state.weather.yesterdayMax.toString(),
              style: weatherCardTextStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Yesterday\'s Minimum: ' + state.weather.yesterdayMin.toString(),
              style: weatherCardTextStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
