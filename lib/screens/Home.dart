import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) {
              switch (value) {
                case 'filter':
                // Do something for Filters
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Filters selected')),
                  );
                  break;
                case 'source':
                // Do something for Option 2
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Option 2 selected')),
                  );
                  break;
                case 'developer':
                // Do something for Option 3
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Option 3 selected')),
                  );
                  break;
                case 'changelog':
                // Do something for Option 3
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Option 3 selected')),
                  );
                  break;
                case 'version':
                // Do something for Option 3
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Option 3 selected')),
                  );
                  break;
                default:
                // Default case if needed
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Unknown option')),
                  );
              }
            },

            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 'filter',
                  child: Row(
                    children: const [
                      Icon(Icons.filter_list_sharp, color: Colors.black),
                      SizedBox(width: 8),
                      Text('Custom Filters'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'source',
                  child: Row(
                    children: const [
                      Icon(Icons.code, color: Colors.black),
                      SizedBox(width: 8),
                      Text('Source Code'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'developer',
                  child: Row(
                    children: const [
                      Icon(Icons.person, color: Colors.black),
                      SizedBox(width: 8),
                      Text('Developer'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'changelog',
                  child: Row(
                    children: const [
                      Icon(Icons.access_time_rounded, color: Colors.black),
                      SizedBox(width: 8),
                      Text('Changelog'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'version',
                  child: Row(
                    children: const [
                      Icon(Icons.info, color: Colors.black),
                      SizedBox(width: 8),
                      Text('Version'),
                    ],
                  ),
                ),

              ];
            },
            icon: const Icon(Icons.more_vert), // The vertical 3-dot icon
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          return Column(
            children: [
              CustomCard(),
            ],
          );
        },
        itemCount: 5, //Number of time show
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 2,
        shadowColor: Colors.grey.withOpacity(0.7),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Color(0xFF1E1E1E), Color(0xFF121212)],
              // dark gradient blacks
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.6),
                blurRadius: 15,
                offset: Offset(0, 8),
                spreadRadius: 1,
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20),
          child: ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.grey[900], // dark grey background
              child: Icon(
                Icons.sms_rounded,
                color: Colors.white70, // light icon color
                size: 30,
                shadows: [
                  Shadow(
                    color: Colors.black54,
                    blurRadius: 5,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
            ),
            title: Text(
              "Bkash",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 22,
                color: Colors.white,
                letterSpacing: 0.8,
                shadows: [
                  Shadow(
                    color: Colors.black87,
                    offset: Offset(0, 1),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
            subtitle: Text(
              maxLines: 2,
              "Your Verification OTP is 12345565 Dont Share Your OTP with ANyone",
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Text(
              "1:23 pm",
              style: TextStyle(
                color: Colors.grey[300],
                fontWeight: FontWeight.w600,
                fontSize: 14,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


