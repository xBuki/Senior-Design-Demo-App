import 'package:demo_app/models/driving_data.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final List<DrivingData> _tempData = [
    DrivingData(timestamp: DateTime.now(), speed: 45.0, accerlation: 60),
    DrivingData(timestamp: DateTime.now(), speed: 69.0, accerlation: 80),
    DrivingData(timestamp: DateTime.now(), speed: 420.0, accerlation: 666),
    DrivingData(timestamp: DateTime.now(), speed: 95.0, accerlation: 60),
    DrivingData(timestamp: DateTime.now(), speed: 25.0, accerlation: 80),
    DrivingData(timestamp: DateTime.now(), speed: 6969.0, accerlation: 666),
    DrivingData(timestamp: DateTime.now(), speed: 45.0, accerlation: 60),
    DrivingData(timestamp: DateTime.now(), speed: 69.0, accerlation: 80),
    DrivingData(timestamp: DateTime.now(), speed: 420.0, accerlation: 666),
    DrivingData(timestamp: DateTime.now(), speed: 95.0, accerlation: 60),
    DrivingData(timestamp: DateTime.now(), speed: 25.0, accerlation: 80),
    DrivingData(timestamp: DateTime.now(), speed: 6969.0, accerlation: 666),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/images/map-feed-image.jpeg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                AppBar(
                  title: const Text('Driving History'),
                  centerTitle: true,
                  automaticallyImplyLeading: false,
                  elevation: 0,
                ),
                if (_currentIndex == 0) ...[
                  // Feed Content
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: _tempData.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5,
                        margin:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: ListTile(
                          title: Text('Speed: ${_tempData[index].speed}'),
                          subtitle: Text(
                              'Acceleration: ${_tempData[index].accerlation}'),
                          trailing: Text(
                            'Time: ${_tempData[index].timestamp.hour}:${_tempData[index].timestamp.minute}',
                          ),
                        ),
                      );
                    },
                  ),
                ] else if (_currentIndex == 1) ...[
                  // Stats Content
                  Center(
                    child: Text('Stats Page Content'),
                  ),
                ] else if (_currentIndex == 2) ...[
                  // Profile Content
                  Center(
                    child: Text('Profile Page Content'),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'Drives',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
