import 'package:flutter/material.dart';

class TitleSecApp extends StatelessWidget {
  const TitleSecApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: const [
          Text(
            ' Adds & offers',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          Expanded(child: SizedBox()),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'View All',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
          Icon(
            Icons.chevron_right_outlined,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
