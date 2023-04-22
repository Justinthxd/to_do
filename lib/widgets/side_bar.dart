import 'package:flutter/material.dart';

Container sideBar() {
  return Container(
    width: 180,
    decoration: const BoxDecoration(
      color: Color.fromRGBO(27, 27, 27, 1),
    ),
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.02),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: const [
              SizedBox(width: 15),
              Icon(
                Icons.edit_rounded,
                color: Colors.white70,
              ),
              SizedBox(width: 15),
              Text(
                'Notes',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: const [
              SizedBox(width: 15),
              Icon(
                Icons.notifications_rounded,
                color: Colors.white30,
              ),
              SizedBox(width: 15),
              Text(
                'Reminders',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white30,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: const [
              SizedBox(width: 15),
              Icon(
                Icons.delete_rounded,
                color: Colors.white30,
              ),
              SizedBox(width: 15),
              Text(
                'Trash',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white30,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Container(
          margin: const EdgeInsets.all(5),
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: const [
              SizedBox(width: 15),
              Icon(
                Icons.login_rounded,
                color: Colors.white30,
              ),
              SizedBox(width: 15),
              Text(
                'Logout',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white30,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
      ],
    ),
  );
}
