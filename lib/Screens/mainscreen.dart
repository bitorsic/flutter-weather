import 'package:flutter/material.dart';
import '../Constants.dart' as constant;

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: constant.textSecondary,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: size.height * 0.1,
              child: Text('Location',
                  style: TextStyle(
                    color: constant.textPrimary,
                    decoration: TextDecoration.none,
                  ))),
          Positioned(
              top: size.height * 0.1,
              child: Text('Date',
                  style: TextStyle(
                    color: constant.textPrimary,
                    decoration: TextDecoration.none,
                    fontSize: 30,
                  ))),
          Positioned(
              top: size.height * 0.3,
              child: Container(
                width: size.width * 0.6,
                height: size.height * 0.23,
                color: Colors.greenAccent,
              )),
          Positioned(
            top: size.height * 0.6,
            child: Text(
              'Temperature',
              style: TextStyle(
                fontSize: size.width * 0.16,
                decoration: TextDecoration.none,
                color: constant.textPrimary,
              ),
            ),
          ),
          Positioned(
              bottom: size.height * 0.03,
              child: Row(
                children: [
                  extraInfo(
                      size: size,
                      icon: Icons.thermostat,
                      name: 'MaxTemp',
                      value: '23'
                  ),

                  extraInfo(
                      value: '2m/s',
                      name: 'Windspeed',
                      icon: Icons.air_outlined,
                      size: size
                  ),

                  extraInfo(
                      value: '23%',
                      name: 'Humidity',
                      icon: Icons.percent,
                      size: size
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class extraInfo extends StatelessWidget {
  const extraInfo({
    super.key,
    required this.value,
    required this.name,
    required this.icon,
    required this.size,
  });

  final Size size;
  final String value;
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Icon(Icons.thermostat),
          Text('MaxTemp',
              style: TextStyle(
                color: constant.textPrimary,
                decoration: TextDecoration.none,
                fontSize: 20,
              )),
          Text('23',
              style: TextStyle(
                color: constant.textPrimary,
                decoration: TextDecoration.none,
                fontSize: 15,
              ))
        ],
      ),
    );
  }
}
