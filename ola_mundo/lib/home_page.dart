import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              // currentAccountPicture: Image.asset('assets/imagens/perfil.png'),
              currentAccountPicture: ClipOval(
                child: Image.network(
                    'https://avatars.githubusercontent.com/u/92038746?v=4'),
              ),
              currentAccountPictureSize: const Size(70, 70),
              accountName: const Text('Vinicin'),
              accountEmail: const Text('Vinicin@cleberson.com'),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Inicio"),
              subtitle: const Text('tela de inicio'),
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Logout"),
              subtitle: const Text('Sair e finalizar sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
            AppController.instance.isDarkTheme ? "Tema Escuro" : "Tema Claro"),
        actions: const [CustomSwitch()],
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Contador: $counter"),
            Container(
              height: 20,
            ),
            const CustomSwitch(),
            Container(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.purple,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.amberAccent,
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() {
    return _CustomSwitchState();
  }
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
        setState(() {});
      },
    );
  }
}
