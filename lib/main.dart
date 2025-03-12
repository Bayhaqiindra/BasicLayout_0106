import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const CuacaHomePage(),
    );
  }
}

class CuacaHomePage extends StatelessWidget {
  const CuacaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> times = ['Now', '17.00', '20.00', '23.00'];
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 74, 180, 230),
        elevation: 0,
        title: const Text(
          'Weather App',
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 74, 180, 230), Color.fromARGB(255, 215, 238, 241)],
            stops: [0.1, 0.7],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Yogyakarta',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500, color: Colors.white),
            ),
            const SizedBox(height: 10),
            const Text(
              'Today',
              style: TextStyle(fontSize: 20, color: Color.fromARGB(213, 79, 79, 79)),
            ),
            const SizedBox(height: 20),
            const Text(
              '28°C',
              style: TextStyle(fontSize: 90, fontWeight: FontWeight.w200, color: Colors.white),
            ),
            const Divider(height: 30, thickness: 3, color: Color.fromARGB(112, 255, 255, 255), indent: 40, endIndent: 40),
            const SizedBox(height: 5),
            const Text(
              'Sunny',
              style: TextStyle(fontSize: 20, color: Color.fromARGB(213, 79, 79, 79)),
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.cloudSun, color: Color.fromARGB(209, 243, 158, 10), size: 20),
                SizedBox(width: 10),
                Text('5 km/h', style: TextStyle(fontSize: 20, color: Colors.white)),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(183, 245, 245, 245).withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.all(18),
              margin: const EdgeInsets.only(top: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Next 7 days',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) {
                      return Column(
                        children: [
                          SizedBox(height: 5),
                          Text(times[index], style: TextStyle(fontSize: 14, color: Colors.black)),
                          SizedBox(height: 5),
                          Icon(FontAwesomeIcons.cloudSun, color: Color.fromARGB(209, 243, 158, 10), size: 20),
                          SizedBox(height: 5),
                          Text('28°C', style: TextStyle(fontSize: 14, color: Color.fromARGB(213, 79, 79, 79))),
                          SizedBox(height: 20),
                          Icon(FontAwesomeIcons.wind, color: Colors.red, size: 20),
                          SizedBox(height: 5),
                          Text('10 km/h', style: TextStyle(fontSize: 14, color: Colors.red)),
                          SizedBox(height: 20),
                          Icon(FontAwesomeIcons.cloudRain, color: Color.fromARGB(255, 15, 153, 221), size: 20),
                          SizedBox(height: 5),
                          Text('0%', style: TextStyle(fontSize: 14, color: Color.fromARGB(213, 79, 79, 79))),
                        ],
                      );
                    }),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Text(
              'Developed by: bayhaqiindra.id',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
