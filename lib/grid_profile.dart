import 'package:flutter/material.dart';
import 'package:profile_grid/home_profile.dart';

class GridProfile extends StatelessWidget {
  GridProfile({super.key});
  final List<Map<String, dynamic>> dataList = [
    {
      'name': 'Catherine Susan',
      'role': 'Software Analyst',
      'skill': 'Flutter Responsive',
      'image':
          'https://media.istockphoto.com/id/1311084168/photo/overjoyed-pretty-asian-woman-look-at-camera-with-sincere-laughter.jpg?s=1024x1024&w=is&k=20&c=QMQ46nig58psiPNy6ruC8FFSkF-jUSlh17vEOfMLbgI='
    },
    {
      'name': 'Rebecca Johns',
      'role': 'Software Developer',
      'skill': 'Flutter Adaptive',
      'image':
          'https://media.istockphoto.com/id/1386479313/photo/happy-millennial-afro-american-business-woman-posing-isolated-on-white.jpg?s=1024x1024&w=is&k=20&c=5OK7djfD3cnNmQ-DR0iQzF-vmA-iTNN1TbuEyCG1DfA='
    },
    {
      'name': 'Cubesha',
      'role': 'HR Manager',
      'skill': 'Employee Legal',
      'image':
          'https://media.istockphoto.com/id/1318189938/photo/headshot-portrait-of-smiling-senior-businesswoman-in-office.jpg?s=1024x1024&w=is&k=20&c=giIGJxR1vCORgpMf3RR_UqPG0p9KD9JhadnM2bN18xw='
    },
    {
      'name': 'Tony Sturd',
      'role': 'Web Developer',
      'skill': 'Flutter Adaptive',
      'image':
          'https://i0.wp.com/sguru.org/wp-content/uploads/2017/06/331319.jpg?resize=491%2C517&ssl=1'
    },
    {
      'name': 'Catherine Susan',
      'role': 'Software Analyst',
      'skill': 'Flutter Responsive',
      'image':
          'https://media.istockphoto.com/id/1311084168/photo/overjoyed-pretty-asian-woman-look-at-camera-with-sincere-laughter.jpg?s=1024x1024&w=is&k=20&c=QMQ46nig58psiPNy6ruC8FFSkF-jUSlh17vEOfMLbgI='
    },
    {
      'name': 'Rebecca Johns',
      'role': 'Software Developer',
      'skill': 'Flutter Adaptive',
      'image':
          'https://media.istockphoto.com/id/1386479313/photo/happy-millennial-afro-american-business-woman-posing-isolated-on-white.jpg?s=1024x1024&w=is&k=20&c=5OK7djfD3cnNmQ-DR0iQzF-vmA-iTNN1TbuEyCG1DfA='
    },
    {
      'name': 'Cubesha',
      'role': 'HR Manager',
      'skill': 'Employee Legal',
      'image':
          'https://media.istockphoto.com/id/1318189938/photo/headshot-portrait-of-smiling-senior-businesswoman-in-office.jpg?s=1024x1024&w=is&k=20&c=giIGJxR1vCORgpMf3RR_UqPG0p9KD9JhadnM2bN18xw='
    },
    {
      'name': 'Tony Sturd',
      'role': 'Web Developer',
      'skill': 'Flutter Adaptive',
      'image':
          'https://i0.wp.com/sguru.org/wp-content/uploads/2017/06/331319.jpg?resize=491%2C517&ssl=1'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      routes: {
        'profilehome': (ctx) {
          return const ProfileHome();
        },
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'PCPL- Members',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.indigo,
        ),
        body: SafeArea(
            child: GridView.builder(
          itemCount: dataList.length,
         
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio:.9,
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 223, 171, 61),
                ),
                
                child: ListView(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(dataList[index]['image']),
                      backgroundColor: Colors.transparent,
                    ),
                    Center(
                      child: Text(
                        dataList[index]['name'],
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            backgroundColor: Colors.amber),
                      ),
                    ),
                    Center(
                      child: Text(
                        dataList[index]['role'],
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        dataList[index]['skill'],
                        style: const TextStyle(
                            color: Color.fromARGB(255, 22, 9, 192),
                            fontSize: 10),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('profilehome');
                            },
                            icon: const Icon(Icons.login_sharp)),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        )),
      ),
    );
  }
}
