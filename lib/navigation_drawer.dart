import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {

  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Drawer(
        child: Material(
          color: Colors.brown,
          child: ListView(
            padding: padding,
            children: <Widget>[
              const SizedBox(height: 60,),
              buildMenuItem(
                text: 'People',
                icon: Icons.people,
                  onTap: (){
                    // Navigator.of(context).pushNamed('/auth');
                  }
              ),
              buildMenuItem(
                text: 'Favourites',
                icon: Icons.favorite_border,
                  onTap: (){
                    // Navigator.of(context).pushNamed('/auth');
                  }
              ),
              buildMenuItem(
                text: 'Workflow',
                icon: Icons.workspaces_filled,
                  onTap: (){
                    // Navigator.of(context).pushNamed('/auth');
                  }
              ),
              buildMenuItem(
                text: 'Updates',
                icon: Icons.update,
                  onTap: (){
                    // Navigator.of(context).pushNamed('/auth');
                  }
              ),
              const SizedBox(width: 30,),
              const Divider(color: Colors.white70,),
              buildMenuItem(
                text: 'Exit',
                icon: Icons.exit_to_app_outlined,
                onTap: (){
                  Navigator.of(context).pushNamed('/auth');
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  required Function() onTap,
}) {
  const color = Colors.white;
  const hoverColor = Colors.white70;

  return ListTile(
    leading: Icon(icon, color: color,),
    title: Text(text, style: const TextStyle(color: color),),
    hoverColor: hoverColor,
    onTap: onTap,
  );
}
