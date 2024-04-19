// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:anti_ai_project/screens/followrequest.dart';
import 'package:flutter/material.dart';

class Alert_Screen extends StatefulWidget {
  const Alert_Screen({super.key});

  @override
  State<Alert_Screen> createState() => _Alert_ScreenState();
}

class _Alert_ScreenState extends State<Alert_Screen> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: Color(0xff212131),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff37425E80),
        // image of the user//
        title: const Text(
          'Notifications',
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
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FollowRequestScreen()),
                    );
                  },
                  child: Text("Requests"))),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Center(
                child: Container(
                  width: 380,
                  decoration: BoxDecoration(
                      color: Color(0xff37425E),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                 child: ListTile(
                         // isThreeLine: true,
                          leading: Icon(
                            Icons.notifications_none_rounded,
                            color: Color(0xff5E87E8),
                            size: 30.0,
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Title",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "12:00 Am",
                                style: TextStyle(fontSize: 12,
                                color: Color(0xff5E87E8),
                                
                                ),
                              )
                            ],
                    ) ,
                    subtitle: Text("Lorem ipsum dolor sit amet consectetur. Imperdie faucibus.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              );
            }, separatorBuilder: (context , index)=> SizedBox(height: 10,)
            , itemCount: 10)
            ),

        ],
        

      ),
    );
    

  }
}
