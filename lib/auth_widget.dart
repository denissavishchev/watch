
import 'package:flutter/material.dart';
import 'package:pie_menu/pie_menu.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {

  String? dropDownValue = 'PL';

  var items = ['PL', 'ENG', 'DE'];

  final _loginTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController(text: 'admin');
  String? errorText = null;

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      setState(() {
        Navigator.of(context).pushNamed('/home_page');
      });
    }
    else {
      setState(() {
        errorText = 'Wrong Login or Password!';
      });

    };

  }

  @override
  Widget build(BuildContext context) {



    const textStyle = TextStyle(
      fontSize: 16,
      color: Colors.white,
    );

    const textFieldDecoration = InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.brown, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2),
      ),
      border: OutlineInputBorder(),

      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      isCollapsed: true,
    );

    final errorText = this.errorText;

    return MaterialApp(
      title: 'Stones and Woods',
      home: Container(
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
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: AppBar(
              backgroundColor: Colors.brown,
              title: Container(
                height: 40,
                // color: Colors.indigo,
                alignment: Alignment.center,
                child: const Text('Login or ...',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),),
              ),
            ),
          ),
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white.withOpacity(0.7)),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.4),
                  // blurRadius: 8,
                  // offset: const Offset(-5, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownButton(
                  alignment: Alignment.center,
                  dropdownColor: const Color(0xff9c4c34),
                  value: dropDownValue,
                    // icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items, style: const TextStyle(color: Colors.white),),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropDownValue = newValue;
                      });
                    },),
                const SizedBox(height: 60,),
                if (errorText !=null) Text(errorText, style: const TextStyle(color: Colors.red),),
                const SizedBox(height: 20,),
                const Text('Username:', style: textStyle,),
                TextField(
                  controller: _loginTextController,
                  decoration: textFieldDecoration,
                  style: const TextStyle(color: Colors.white),
                  cursorColor: Colors.blue,
                ),
                const SizedBox(height: 20,),
                const Text('Password:', style: textStyle,),
                TextField(
                  controller: _passwordTextController,
                  decoration: textFieldDecoration,
                  style: const TextStyle(color: Colors.white),
                  cursorColor:Colors.blue,
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    TextButton(
                        onPressed: _auth,
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.brown),
                            foregroundColor: MaterialStateProperty.all(Colors.white),
                            textStyle: MaterialStateProperty.all(
                              const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 15, vertical: 5))
                        ),
                        child: const Text('Login')),
                    const SizedBox(width: 30,),
                    TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.brown),
                            foregroundColor: MaterialStateProperty.all(Colors.white),
                            textStyle: MaterialStateProperty.all(
                              const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 10, vertical: 5))
                        ),
                        child: const Text('Register')),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
