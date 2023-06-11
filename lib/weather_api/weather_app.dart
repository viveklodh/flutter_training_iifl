import 'package:flutter/material.dart';
import 'package:flutter_training_iifl/weather_api/weather_model.dart';
import 'package:flutter_training_iifl/weather_api/weather_repo.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
   ///
  TextEditingController controller = TextEditingController();
  ///
  WeatherModel? weatherModel;
  ///
  var repoObject = Repo();
  ///
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("weather app"),
            ),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: controller,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () async {

                       weatherModel = await repoObject.getWeatherFromCity(controller.text);
                       setState(() {

                       });

                      },
                      child: Text("search")),
                  SizedBox(
                    height: 20,
                  ),

                  FutureBuilder(
                      future: repoObject.getWeatherFromCity(controller.text) ,
                      builder: (context,snapShot){
                        if(snapShot.hasData){
                          return Column(
                            children: [
                              Text("temp ${snapShot.data?.main?.temp}"),
                              Text("min temp ${snapShot.data?.main?.tempMin}"),
                              Text("max temp ${snapShot.data?.main?.tempMax}"),
                            ],
                          );
                        }
                        else{
                          return CircularProgressIndicator();
                        }

                      })


                ],
              ),
            )));
  }
}