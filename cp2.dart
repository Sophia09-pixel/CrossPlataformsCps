import 'package:flutter/material.dart';
//Livia Gallafrio 99508
//Sophia de Sousa 551442
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GitHub Perfil',
      theme: ThemeData.dark(useMaterial3: false),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GitHub Perfil"),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text("Michael Scott"),
                accountEmail: Text("m.scott@dundler.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/michael.jpg'),
                ),
              ),
              Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Perfil"),
                  ),
                  ListTile(
                    leading: Icon(Icons.book),
                    title: Text("Repositórios"),
                  ),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text("Favoritos"),
                  ),
                ],
              )
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/michael.jpg'),
              ),
              SizedBox(
                height: 9,
              ),
              Text(
                "Michael Scott",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "mscott",
                style: TextStyle(
                    fontSize: 17, color: Color.fromARGB(255, 159, 159, 159)),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.map),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Brazil, São Paulo, SP")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email),
                      SizedBox(
                        width: 8,
                      ),
                      Text("m.scott@dundler.com")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.people),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "32",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("seguidores"),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "45",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("seguindo")
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color.fromARGB(241, 0, 229, 255),
          shape: CircleBorder(),
          child: Icon(Icons.add, color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
    );
  }
}
