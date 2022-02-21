import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _primaryColor = Colors.lightGreen;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: _primaryColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('images/myimage.jpg'),
              ),
              const Text(
                "Ildo Park",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.normal),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                    color: _primaryColor.shade100,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5),
              ),
              SizedBox(
                height: 10,
                width: 150,
                child: Divider(
                  thickness: 2,
                  color: _primaryColor.shade800,
                ),
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: const Icon(Icons.phone),
                  title: Text(
                    "+86 10 4440 1692",
                    style: TextStyle(
                      color: _primaryColor.shade900,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: const Icon(Icons.email),
                  title: Text(
                    "ildopark@naver.com",
                    style: TextStyle(
                      color: _primaryColor.shade900,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
