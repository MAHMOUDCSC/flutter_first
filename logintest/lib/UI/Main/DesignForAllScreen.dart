import 'package:flutter/material.dart';
import '../Pages/sigin.dart';

class MyNavigationBar extends StatelessWidget {
  int _selectedIndex = 0;
  MyNavigationBar(this._selectedIndex);

  void _onItemTapped(BuildContext context, int index) {
    _selectedIndex = index;

    switch (_selectedIndex) {
      case 0:
        Navigator.pushNamed(context, "/");
        break;
      case 2:
        Navigator.pushNamed(context, "/Signin");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      backgroundColor: Colors.green.shade700,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.design_services,
          ),
          label: 'خدمات',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.request_quote_outlined,
          ),
          label: 'الطلبات',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(
            Icons.login,
          ),
          label: 'تسجيل',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.white,
      onTap: (_selectedIndex) => {_onItemTapped(context, _selectedIndex)},
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  MyAppBar(this.title);
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: new Text(title),
      backgroundColor: Colors.green.shade700,
    );
  }
}
