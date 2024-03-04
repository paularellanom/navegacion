import 'package:flutter/material.dart';
import 'package:navegacion/pages/pagina02.dart';

void main() => runApp(const NavegacionPantallas());

class NavegacionPantallas extends StatelessWidget {
  const NavegacionPantallas({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Navegación",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navegación"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home'),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)),
              onPressed: () => {
                //print("Navegando"),
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Pagina02()),
                )
              },
              child: const Text('Navegar a la página 2',
                  style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
