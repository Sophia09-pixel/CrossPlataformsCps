import 'package:flutter/material.dart';

//Sophia de Sousa rm551442
//Livia Gallafrio rm 99508

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Contato> contatos = [
    Contato(1,'Livia Gallafrio', 'lili@gmail.com'),
    Contato(2,'Sophia de Sousa', 'Sophicooper@gmail.com'),
    Contato(3,'Luis Miguel', 'LuisMiguel@gmail.com'),
    Contato(4,'Alanzoka', 'alanzoka@gmail.com'),
  ];

  int get totalFavoritos => contatos.where((c) => c.favorito).length;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Contatos Favoritos: $totalFavoritos',
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: contatos.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=${contatos[index].id}'),
              ),
              title: Text(contatos[index].nomeCompleto),
              subtitle: Text(contatos[index].email),
              trailing: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: contatos[index].favorito ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    setFavorite(index);
                  });
                },
              ),
            );
          },
        ),
      ),
    );
  }

  void setFavorite(index){
    contatos[index].favorito = !contatos[index].favorito;
  }

}


class Contato {
  int id;
  String nomeCompleto;
  String email;
  bool favorito = false;

  Contato(this.id, this.nomeCompleto, this.email, {this.favorito = false});
}

