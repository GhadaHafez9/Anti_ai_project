import 'package:anti_ai_project/screens/alert_screens/followrequest.dart';
import 'package:flutter/material.dart';

class NotificationObject {
  final String title;
  final String time;
  final String description;

  NotificationObject({
    required this.title,
    required this.time,
    required this.description,
  });
}

class AlertScreen extends StatefulWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  List<NotificationObject> notifications = [
    NotificationObject(
      title: "Notification 1",
      time: "12:00 AM",
      description: "Notification 1 description",
    ),
    NotificationObject(
      title: "Notification 2",
      time: "1:30 PM",
      description: "Notification 2 description",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212131),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff37425E80),
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
                    builder: (context) => FollowRequestScreen(),
                  ),
                );
              },
              child: Text("Requests"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                var notification = notifications[index];
                return Center(
                  child: Container(
                    width: 380,
                    decoration: BoxDecoration(
                      color: Color(0xff37425E),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.notifications_none_rounded,
                        color: Color(0xff5E87E8),
                        size: 30.0,
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            notification.title,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            notification.time,
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff5E87E8),
                            ),
                          )
                        ],
                      ),
                      subtitle: Text(
                        notification.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemCount: notifications.length,
            ),
          ),
        ],
      ),
    );
  }
}