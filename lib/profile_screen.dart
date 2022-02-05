import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    List tags = ['travel', 'urban', 'fashion', 'lifestyle', 'editing'];
    List categories = [
      'Featured',
      'Neon City',
      'Street Art',
      'Fashion',
      'Studio'
    ];
    Color _iconColor = Colors.grey;

    return Scaffold(
      backgroundColor: Color(0xff09031D),
      appBar: AppBar(
        backgroundColor: Color(0xff09031D),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28.0, top: 7),
                child: Container(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    radius: 36,
                    backgroundImage: AssetImage(
                      'images/m4.jpg',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mensur Serxanov',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.white),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Azerbaijan-A.Z.E',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 79.0, top: 18),
                child: Column(
                  children: [
                    Text(
                      '2.2K',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'followers',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 34,
              ),
              Container(
                color: Colors.white,
                width: 0.2,
                height: 21,
              ),
              SizedBox(
                width: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 17.0),
                child: Column(
                  children: [
                    Text(
                      '465',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'following',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 34,
              ),
              Container(
                color: Colors.white,
                width: 0.2,
                height: 22,
              ),
              SizedBox(
                width: 35,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 17, top: 8, right: 17, bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(33)),
                    gradient: LinearGradient(
                        colors: [Color(0xff6D0EB5), Color(0xff4059F1)],
                        begin: Alignment.bottomRight,
                        end: Alignment.centerLeft)),
                child: Text(
                  'follow',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 44,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tags.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(color: Colors.white12)),
                  margin: EdgeInsets.only(right: 13),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 13.0, bottom: 5, right: 20, left: 20),
                    child: Text(
                      tags[index],
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(33),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, top: 33, right: 15),
                    child: Text(
                      'Protfllio',
                      style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 17.0, top: 3),
                          child: index == 1
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      categories[index],
                                      style: TextStyle(
                                          color: Color(0xff434AE8),
                                          fontSize: 19),
                                    ),
                                    CircleAvatar(
                                      radius: 2,
                                      backgroundColor: Color(0xff434AE8),
                                    )
                                  ],
                                )
                              : Text(
                                  categories[index],
                                  style: TextStyle(
                                      color: Colors.grey.withOpacity(0.9),
                                      fontSize: 19),
                                ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: EdgeInsets.only(right: 25, left: 25),
                            height: 200,
                            child: StaggeredGridView.countBuilder(
                              crossAxisCount: 4,
                              itemCount: 4,
                              itemBuilder: (BuildContext context, int index) =>
                                  Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  child: Image.asset(
                                    'images/m${index + 1}.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              staggeredTileBuilder: (int index) =>
                                  StaggeredTile.count(2, index.isEven ? 3 : 1),
                              mainAxisSpacing: 9,
                              crossAxisSpacing: 8,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 12, right: 12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(33))),
                          height: 45,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.home,
                                color: Color(0xff434BE6),
                              ),
                              Icon(
                                Icons.notifications_active,
                                color: Colors.grey.withOpacity(0.6),
                              ),
                              SizedBox(
                                width: 33,
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (_iconColor == Colors.grey) {
                                      _iconColor = Colors.red;
                                    } else {
                                      _iconColor = Colors.grey;
                                    }
                                  });
                                },
                                icon: Icon(Icons.favorite, color: _iconColor),
                              ),
                              Icon(
                                Icons.person,
                                color: Colors.grey.withOpacity(0.6),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 23,
                          child: Container(
                            height: 66,
                            width: 66,
                            child: Icon(
                              Icons.add,
                              size: 27,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(55)),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xff6615C1),
                                    Color(0xff484FDE)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
