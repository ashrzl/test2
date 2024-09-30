import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF6B2572), // Purple color
        leading: Padding(
          padding: EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Icon(Icons.location_on, color: Colors.red),
              SizedBox(width: 4),
              // Text(
              //   'Puchong, Selangor',
              //   style: TextStyle(color: Colors.white),
              // ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              // Open menu logic
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF6B2572),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                children: [
                  // Search Mosque Bar
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
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
                  SizedBox(height: 20),
                  // Profile Section
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
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
                          backgroundImage: AssetImage('assets/profile.jpg'), // Add profile image asset
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Icon(Icons.edit, color: Color(0xFF6B2572), size: 16),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        // Profile Details
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Abu Bakar bin Babab',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('abubakar@gmail.com', style: TextStyle(color: Colors.black54)),
                            Text('0123456789', style: TextStyle(color: Colors.black54)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Menu Icons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Icon with purple background
                  _buildMenuIconWithIcon(Icons.schedule, 'Waktu Solat'),

                  // Image icons with purple background
                  _buildMenuIconWithImage('assets/qibla.png', 'Kiblat'),
                  _buildMenuIconWithImage('assets/read-quran.png', 'Al-Quran'),
                  _buildMenuIconWithImage('assets/hadith.png', 'Hadis'),
                  _buildMenuIconWithImage('assets/kaabah.png', 'Haji & Umrah'),
                ],
              ),
            ),

            SizedBox(height: 30),
            // Bottom Tab
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: Color(0xFF6B2572),
                    labelColor: Color(0xFF6B2572),
                    unselectedLabelColor: Colors.black54,
                    tabs: [
                      Tab(text: 'Masjid Dilanggan'),
                      Tab(text: 'Masjid Diikut'),
                    ],
                  ),
                  Container(
                    height: 300, // Just a placeholder height
                    child: TabBarView(
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
      ),
    );
  }

  // Function to build the menu icon using IconData
  Widget _buildMenuIconWithIcon(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          child: Icon(icon, size: 28, color: Colors.black54),
          color: Color(0xFF6B2572),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }

  // Function to build the menu icon using Image.asset
  Widget _buildMenuIconWithImage(String assetPath, String label) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          child: Image.asset(
            assetPath,
            height: 28,
            width: 28,
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }
}
