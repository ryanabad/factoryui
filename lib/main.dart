import 'package:factoryui/new_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Factory Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewPage(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 1; // Default to Dashboard
  int selectedButtonIndex = 0; // Default to first button

  // Define the pages content for each bottom navigation item
  static const List<List<Widget>> pagesContent = [
    [
      Center(child: Text('Engineers Option 1')),
      Center(child: Text('Engineers Option 2')),
      Center(child: Text('Engineers Option 3')),
    ],
    [
      // This will be the main dashboard content
      Center(child: Text('Dashboard Option 1')),
      Center(child: Text('Dashboard Option 2')),
      Center(child: Text('Dashboard Option 3')),
    ],
    [
      Center(child: Text('Notifications Option 1')),
      Center(child: Text('Notifications Option 2')),
      Center(child: Text('Notifications Option 3')),
    ],
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void _onButtonTapped(int index) {
    setState(() {
      selectedButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Factory Dashboard'),
      ),
      body: Column(
        children: [
          // Display content based on button press and bottom navbar item
          Expanded(
            child: IndexedStack(
              index: selectedButtonIndex,
              children: pagesContent[selectedIndex],
            ),
          ),
          // Horizontal buttons at the bottom
          Container(
            color: Colors.grey[200],
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButton('Factory 1', 0),
                _buildButton('Factory 2', 1),
                _buildButton('Factory 3', 2),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Engineers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildButton(String text, int index) {
    return TextButton(
      onPressed: () {
        _onButtonTapped(index);
      },
      style: TextButton.styleFrom(
        backgroundColor: selectedButtonIndex == index ? Colors.black12 : Colors.orange,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: selectedButtonIndex == index ? Colors.orange : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

