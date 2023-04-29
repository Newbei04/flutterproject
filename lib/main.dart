import 'package:flutter/material.dart';
import 'user_theme.dart';
import 'editinfo.dart';
import 'editinfo1.dart';
import 'editinfo2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = UserTheme.light();
    return MaterialApp(
      title: 'User Profile',
      theme: theme,
      home: const HomePageWidget(),
    );
  }
}

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  String name = 'Richard Press';
  String position = 'Encoder';
  String company = 'MIS';
  String rate = '\$5';
  String date = 'January 10, 2023';

  String name1 = 'Jose Carlo Gamboa';
  String position1 = 'Coordinator';
  String company1 = 'MIS';
  String rate1 = '\$10';
  String date1 = '01/10/2023';

  String name2 = 'Reden Rudolf Recto';
  String position2 = 'Student Assistant';
  String company2 = 'MIS';
  String rate2 = '\$2';
  String date2 = '01/20/2023';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: const Image(
                  image: AssetImage('assets/pic1.jpg'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  // Navigate to the edit screen and wait for a result
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditInfoScreen(
                            name: name,
                            position: position,
                            company: company,
                            rate: rate,
                            date: date)),
                  );

                  // Update the data with the result from the edit screen
                  if (result != null) {
                    setState(() {
                      name = result['name'];
                      position = result['position'];
                      company = result['company'];
                      rate = result['rate'];
                      date = result['date'];
                    });
                  }
                },
                child: const Text('Edit Info'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    '$position - $company',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Rate: $rate/hr',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hired:',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    date,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: const Image(
                  image: AssetImage('assets/pic2.jpg'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  // Navigate to the edit screen and wait for a result
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditInfoScreen1(
                            name1: name1,
                            position1: position1,
                            company1: company1,
                            rate1: rate1,
                            date1: date1)),
                  );

                  // Update the data with the result from the edit screen
                  if (result != null) {
                    setState(() {
                      name1 = result['name1'];
                      position1 = result['position1'];
                      company1 = result['company1'];
                      rate1 = result['rate1'];
                      date1 = result['date1'];
                    });
                  }
                },
                child: const Text('Edit Info'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name1,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    '$position1 - $company1',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Rate: $rate1/hr',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hired:',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    date1,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: const Image(
                  image: AssetImage('assets/pic3.jpg'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  // Navigate to the edit screen and wait for a result
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditInfoScreen2(
                            name2: name2,
                            position2: position2,
                            company2: company2,
                            rate2: rate2,
                            date2: date2)),
                  );

                  // Update the data with the result from the edit screen
                  if (result != null) {
                    setState(() {
                      name2 = result['name2'];
                      position2 = result['position2'];
                      company2 = result['company2'];
                      rate2 = result['rate2'];
                      date2 = result['date2'];
                    });
                  }
                },
                child: const Text('Edit Info'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name2,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    '$position2 - $company2',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Rate: $rate2/hr',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hired:',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    date2,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
