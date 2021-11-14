import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key? key,
    required this.title,
    required this.eventDate,
    required this.eventTime,
  }) : super(key: key);
  final String? title;
  final String? eventDate;
  final String? eventTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Event Reminder"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.meeting_room_outlined,
                size: 60.0,
              ),
              SizedBox(height: 12.0),
              Text(
                "Your reminder for",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 12.0),
              Text(
                title ?? "Business Meeting",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12.0),
              Text(
                eventDate ?? "Saturday, 21 August 2022",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.access_time),
                  SizedBox(width: 8.0),
                  Text(
                    eventTime ?? "07:30 PM",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
