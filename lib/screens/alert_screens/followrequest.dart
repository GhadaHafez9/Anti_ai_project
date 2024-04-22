// ignore_for_file: prefer_const_constructors

import 'package:anti_ai_project/screens/alert_screens/followrequest2.dart';
import 'package:anti_ai_project/screens/home_screen_all.dart';
import 'package:flutter/material.dart';

class FollowRequestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212131),
      appBar: AppBar(
         elevation: 0,
         leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => All_Screen()),
            );
          },
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff37425E80),
        title: const Text(
          'Follow requests',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        toolbarHeight: 80,
        
      ),
      
     body: Padding(
        padding: EdgeInsets.only(top: 15),
        child: Expanded(
          child: ListView.separated(
            itemCount: followRequests.length,
            itemBuilder: (context, index) {
              final request = followRequests[index];
              return Center(
                child: Container(
                  width: 390,
                  decoration: BoxDecoration(
                    color: Color(0xff37425E),
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(request.profilePicture),
                    ),
                    title: Text(
                      request.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                   
                    subtitle: Text(
                      request.email,
                     maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 2),
                        TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff07488A)),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FollowRequestScreen2()),
                          );
                        },
                        child: Text(
                          '  Accept  ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      TextButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                                side: BorderSide(
                                  color: Color(0xff07488A),
                                  width: 2.0,
                                )
                              ),
                            ),
                            foregroundColor:
                                MaterialStateProperty.all(Color(0xff07488A)),
                          ),
                          onPressed: () {},
                          child: Text(
                            '  Delete  ',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),

          ),
        ),
      ),
    );
  }
}

class FollowRequest {
  final String profilePicture;
  final String name;
  final String email;

  FollowRequest({required this.profilePicture, required this.name , required this.email});
}

List<FollowRequest> followRequests = [
  FollowRequest(
    profilePicture: 'assets/follow request.jpg',
    name: 'Nour',
    email: '@NourhanMahmoud'
  ),
  FollowRequest(
    profilePicture: 'assets/follow request.jpg',
    name: 'Nour',
    email: '@NourhanMahmoud'
  ),
  
 
  
];