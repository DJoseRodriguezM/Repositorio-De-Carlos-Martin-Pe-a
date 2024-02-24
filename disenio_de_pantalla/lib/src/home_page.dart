import 'package:disenio_de_pantalla/src/modules/pag_principal.dart';
import 'package:flutter/material.dart';
import 'package:disenio_de_pantalla/shared/custom_icon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          centerTitle: false,
          title: const Text(
            'Cuenta de Google',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          actions: [
            CustomIconButton(
              icon: Icons.help_outline,
              onPressed: () {},
            ),
            CustomIconButton(
              icon: Icons.search,
              onPressed: () {},
            ),
            CustomIconButton(
              icon: Icons.account_circle_outlined,
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: const Color.fromARGB(255, 0, 145, 212),
            labelColor: Colors.white,
            onTap: (value) => print('Tab: $value'),
            tabs: const [
              Tab(
                child: Text(
                  "Página principal",
                  style: TextStyle(color: Color.fromARGB(255, 82, 68, 68)),
                  textAlign: TextAlign.center,
                ),
              ),
              Tab(
                  child: Text(
                "Información  personal",
                style: TextStyle(color: Color.fromARGB(255, 82, 68, 68)),
                textAlign: TextAlign.center,
              )),
              Tab(
                  child: Text(
                "Datos y privacidad",
                style: TextStyle(color: Color.fromARGB(255, 82, 68, 68)),
                textAlign: TextAlign.center,
              )),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PaginaPrincipal(),
            PersonalinfoPage(),
            PrivPage(),
          ],
        ),
      ),
    );
  }
}

class PersonalinfoPage extends StatelessWidget {
  const PersonalinfoPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Información Personal'));
  }
}

class PrivPage extends StatelessWidget {
  const PrivPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Datos y privacidad'));
  }
}
