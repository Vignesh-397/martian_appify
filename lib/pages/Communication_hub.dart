import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:martian/global_variables.dart';

class NearbyPeopleScreen extends StatefulWidget {
  @override
  State createState() => NearbyPeopleScreenState();
}

class NearbyPeopleScreenState extends State<NearbyPeopleScreen> {
  final Geolocator _geolocator = Geolocator();
  Position? _currentPosition;
  List<User> _nearbyUsers = [];

  @override
  void initState() {
    super.initState();
    _getUserLocation();
    _getNearbyUsers();
  }

  Future<void> _getUserLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      setState(() {
        _currentPosition = position;
      });
    } catch (e) {
      print(e);
    }
  }

  void _getNearbyUsers() {
    setState(() {
      _nearbyUsers = List.generate(
        10,
        (index) => User(
          name: 'User $index',
          distance: index * 100,
          country: 'India',
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Find Nearby People',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: GlobalVariables.secondaryColor,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView.builder(
      itemCount: _nearbyUsers.length,
      itemBuilder: (context, index) {
        final user = _nearbyUsers[index];
        return GestureDetector(
          onTap: () {
            _showUserDetailsDialog(user);
          },
          child: ListTile(
            title: Text(user.name),
            subtitle: Text('${user.distance} meters away'),
          ),
        );
      },
    );
  }

  void _showUserDetailsDialog(User user) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('User Details'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Name: ${user.name}'),
              Text('Distance: ${user.distance} meters away'),
              Text('Country: ${user.country}')
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
            TextButton(
              onPressed: () {
                _handleConnectButton(user);
              },
              child: const Text('Connect'),
            ),
          ],
        );
      },
    );
  }

  void _handleConnectButton(User user) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pop();
      _showSuccessDialog(user);
    });
  }

  void _showSuccessDialog(User user) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Success'),
          content: Text('Successfully connected to ${user.name}!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Message'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

class User {
  final String name;
  final int distance;
  final String country;

  User({required this.name, required this.distance, required this.country});
}
