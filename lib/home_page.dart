import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:watch/pulse.dart';
import 'package:watch/sex_buttons.dart';

import 'navigation_drawer.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  bool selectedUnit = true;
  String selectedColor = 'White';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      body: Builder(
        builder: (context) {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff252829),
                  Color(0xff9c4c34),
                  Color(0xffaf876e),
                  Color(0xff9c4c34),
                  Color(0xff252829),
                ]
              ),
            ),
            width: double.maxFinite,
            height: double.maxFinite,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 50,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 600,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.elliptical(100, 250),
                                  bottomRight: Radius.elliptical(100, 250),
                                ),
                                color: Color(0xff303338),
                              ),
                            ),
                          ),
                          const SizedBox(width: 50,),
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.elliptical(100, 250),
                                  bottomLeft: Radius.elliptical(100, 250),
                                ),
                                color: Color(0xff303338),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ),
                Positioned(
                  top: 60,
                  child: Row(
                    children: [
                    IconButton(color: Colors.white, icon: const Icon(Icons.menu),
                      onPressed: () {
                      Scaffold.of(context).openDrawer();
                      },
                    ),
                    const Text('Sidly', style: TextStyle(color: Colors.white, fontSize: 18),
                    ),

                    ],
                  ),
                ),
                Positioned(
                  top: 60,
                    left: 300,
                    child: UnitsButton(
                      onPress: ((){
                        setState(() {
                          if (selectedUnit == true) {
                              selectedUnit = false;
                              selectedColor = 'Black';
                          }else if (selectedUnit == false) {
                            selectedUnit = true;
                            selectedColor = 'White';
                          }

                        });
                      }),
                      color: selectedUnit ? Colors.white : Colors.black,
                      frameColor: selectedUnit ? Colors.black : Colors.white,
                      child: Text(selectedColor, style: TextStyle(color: selectedUnit ? Colors.black : Colors.white,
                          fontSize: 20),),),),
                Positioned(
                  top: 175,
                    left: 15,
                    child: Container(
                      width: 350,
                      height: 350,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(300),),
                        color: Color(0xffb38f77),
                      ),
                    ),
                ),
                Positioned(
                  top: 195,
                  left: 35,
                  child: Container(
                    width: 310,
                    height: 310,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(300),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 10,
                          color: Colors.white,

                        ),
                      ],
                      color: Color(0xffc9663f),
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  right: 20,
                  left: 0,
                  child: Container(
                    width: double.maxFinite,
                    height: 400,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/watch.png'),
                          fit: BoxFit.cover
                      ),
                    ),

                  ),
                ),
                // Positioned(
                //   top: 390,
                //   left: 185,
                //   child: SizedBox(
                //     width: 0.01,
                //     height: 0.01,
                //     child: Pulse(),
                //   ),),

              ],
            )
          );
        }
      ),
    );
  }
}
