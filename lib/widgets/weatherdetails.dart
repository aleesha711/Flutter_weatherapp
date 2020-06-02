import 'package:flutter/material.dart';

class WeatherDetails extends StatelessWidget {
  final String tempInfo;

  const WeatherDetails({Key key, this.tempInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Current Temperature: ", style: TextStyle(fontSize: 20.0)),
              tempInfo != null
                  ? Text(tempInfo,
                      style: TextStyle(fontSize: 20.0))
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
