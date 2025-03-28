import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  final String title;
  final int count;
  const TabBarItem({super.key, required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
          ),
          count > 0
              ? Container(
                  margin: EdgeInsetsDirectional.only(start: 5),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      count > 9 ? "9" : count.toString(),
                      style: TextStyle(color: Colors.black54, fontSize: 10),
                    ),
                  ),
                )
              : SizedBox(
                  width: 0,
                  height: 0,
                ),
        ],
      ),
    );
  }
}
