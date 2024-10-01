import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // List of pages for each tab
  final List<Widget> _pages = <Widget>[
    const HomeScreen(), // Changed from HomePage to HomeScreen
    const Center(child: Text('Search Page')), // Placeholder for Search Page
    const Center(child: Text('Settings Page')), // Placeholder for Settings Page
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected tab index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF6B2572), // Purple color
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _pages[_selectedIndex], // Display selected page

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Carian Masjid',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF6B2572), // Purple color for selected item
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped, // Handle item tap
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF6B2572),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              children: [
                // Search Mosque Bar
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: Colors.black54),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Carian Masjid',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(Icons.mic, color: Colors.black54),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Profile Section
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      // Profile Picture
                      CircleAvatar(
                        radius: 30,
                        // backgroundImage: AssetImage('assets/profile.jpg'), // Add image asset here
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.edit,
                              color: Color(0xFF6B2572),
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),

                      // Profile Details
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Abu Bakar bin Babab',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'abubakar@gmail.com',
                            style: TextStyle(color: Colors.black54),
                          ),
                          Text(
                            '01234567890',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Menu Icons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildMenuIconWithIcon(
                  Icons.schedule,
                  'Waktu Solat',
                  const Color(0xFF6B2572),
                ),
                _buildMenuIconWithImage(
                  'assets/qibla.png',
                  'Kiblat',
                  const Color(0xFF6B2572),
                ),
                _buildMenuIconWithImage(
                  'assets/read-quran.png',
                  'Al-Quran',
                  const Color(0xFF6B2572),
                ),
                _buildMenuIconWithImage(
                  'assets/hadith.png',
                  'Hadis',
                  const Color(0xFF6B2572),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),

          // Bottom Tab
          DefaultTabController(
            length: 2,
            child: Column(
              children: [
                const TabBar(
                  indicatorColor: Color(0xFF6B2572),
                  labelColor: Color(0xFF6B2572),
                  unselectedLabelColor: Colors.black54,
                  tabs: [
                    Tab(text: 'Masjid Dilanggan'),
                    Tab(text: 'Masjid Diikut'),
                  ],
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 300, // Placeholder height for TabBarView
                  child: const TabBarView(
                    children: [
                      Center(child: Text('Masjid Dilanggan content')),
                      Center(child: Text('Masjid Diikut content')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Function to build the menu icons with IconData
  Widget _buildMenuIconWithIcon(IconData icon, String label, Color color) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFFECECEC),
          ),
          child: Icon(icon, size: 28, color: color),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(color: Colors.black54),
        ),
      ],
    );
  }

  // Function to build the menu icons with Image asset
  Widget _buildMenuIconWithImage(String assetPath, String label, Color color) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFFECECEC),
          ),
          child: Image.asset(assetPath, height: 28, width: 28, color: color),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(color: Colors.black54),
        ),
      ],
    );
  }
}


