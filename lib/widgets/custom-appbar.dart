import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final bool isDarkMode;
  final Function toggleTheme;

  CustomAppBar({required this.isDarkMode, required this.toggleTheme});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(size: 30, color: Colors.white),
      elevation: 10,
      backgroundColor:Colors.black87,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/images/coin.png', height: 46, width: 46),
              SizedBox(width: 12),
              Text(
                'Expense Tracker',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              widget.toggleTheme(); // Toggle theme state
            },
            icon: Icon(
              widget.isDarkMode ? Icons.nightlight : Icons.wb_sunny,
              size: 36,
            ),
          ),
        ],
      ),
    );
  }
}