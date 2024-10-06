import 'package:flutter/material.dart';
import 'modules/car_dealer_system/car_dealer_screen.dart';
import 'modules/pos/pos_screen.dart';
import 'modules/accounting/accounting_screen.dart';
import 'modules/restaurant_pos/restaurant_pos_screen.dart';
import 'modules/hotel_pms/hotel_pms_screen.dart';
import 'modules/music_film/music_film_screen.dart';

void main() {
  runApp(AenzbiApp());
}

class AenzbiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aenzbi App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    CarDealerScreen(),
    POSScreen(),
    AccountingScreen(),
    RestaurantPOSScreen(),
    HotelPMSScreen(),
    MusicFilmScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aenzbi Business Application'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental),
            label: 'Car Dealer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'POS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: 'Accounting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Restaurant POS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            label: 'Hotel PMS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Music & Film',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
