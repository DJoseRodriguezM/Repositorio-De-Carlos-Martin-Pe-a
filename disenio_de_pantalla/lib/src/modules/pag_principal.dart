import 'package:disenio_de_pantalla/shared/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      // separatorBuilder: (context, index) {
      //   return const Text('Separador');
      // },
      itemBuilder: (context, index) {
        return const ItemChat();
      },
    );
  }
}

class ItemChat extends StatelessWidget {
  const ItemChat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.all(0.0),
            color: Colors.white,
            child: ListTile(
              tileColor: Colors.white,
              selectedTileColor: Colors.white,
              dense: false,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 35.0, horizontal: 15.0),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Color.fromARGB(255, 218, 218, 218), width: 1.0),
                borderRadius: BorderRadius.zero,
              ),
              title: Text(
                'Tu cuenta está protegida ',
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.left,
              ),
              subtitle: Column(children: [
                Text(
                  'La Verificacion de seguridad revisó '
                  'tu cuenta y no encontró acciones '
                  'recomendadas.',
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.left,
                ),
                SecondaryButton(
                  text: 'Ver detalles',
                ),
              ]),
              trailing: FlutterLogo(
                size: 100,
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(0.0),
            color: Colors.white,
            child: ListTile(
              tileColor: Colors.white,
              selectedTileColor: Colors.white,
              dense: false,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 35.0, horizontal: 15.0),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Color.fromARGB(255, 218, 218, 218), width: 1.0),
                borderRadius: BorderRadius.zero,
              ),
              title: Text(
                'Verificación de Privacidad',
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.left,
              ),
              subtitle: Column(children: [
                Text(
                  'Elige la configuración de privacidad '
                  'indicada para ti con esta guía paso a paso.',
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.left,
                ),
                SecondaryButton(
                  text: 'Realizar la Verificación de privacidad',
                ),
              ]),
              trailing: FlutterLogo(
                size: 100,
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '  ¿Buscas otra infromación?',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    icon: Icons.search,
                    color: Colors.grey,
                  ),
                  Text(
                    'Buscar en la Cuenta de Google',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Color.fromARGB(129, 0, 0, 0)),
                  ),
                  CustomIconButton(
                    icon: Icons.arrow_forward_ios_rounded,
                    color: Colors.grey,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    icon: Icons.help,
                    color: Colors.grey,
                  ),
                  Text(
                    'Ver las opciones de ayuda',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color.fromARGB(129, 0, 0, 0)),
                  ),
                  CustomIconButton(
                    icon: Icons.arrow_forward_ios_rounded,
                    color: Colors.grey,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    icon: Icons.comment,
                    color: Colors.grey,
                  ),
                  Text(
                    'Enviar comentarios',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color.fromARGB(129, 0, 0, 0)),
                  ),
                  CustomIconButton(
                    icon: Icons.arrow_forward_ios_rounded,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Card(
            margin: EdgeInsets.all(0.0),
            color: Colors.white,
            child: ListTile(
              tileColor: Colors.white,
              selectedTileColor: Colors.white,
              dense: false,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 35.0, horizontal: 15.0),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Color.fromARGB(255, 218, 218, 218), width: 1.0),
                borderRadius: BorderRadius.zero,
              ),
              title: Text(
                'Sólo tu puedes ver esta configuración. También'
                'puedes revisar la configuración de Maps, la '
                'Búsqueda o cualquier servicio de Google que uses'
                'con frecuencia. Google protege la privacidad y la'
                'seguridad de tus datos.',
                style: TextStyle(color: Color.fromARGB(160, 0, 0, 0)),
                textAlign: TextAlign.left,
              ),
              subtitle: Row(
                children: [
                  thirdButton(
                    text: 'Más información',
                  ),
                ],
              ),
              trailing: FlutterLogo(
                size: 65,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.textSize = 13.0,
    this.textColor = Colors.blue,
    this.textAlign = TextAlign.left,
  }) : super(key: key);

  final Function()? onPressed;
  final String text;
  final double textSize;
  final Color textColor;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          color: textColor,
          fontSize: textSize,
        ),
      ),
    );
  }
}

class thirdButton extends StatelessWidget {
  const thirdButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.textSize = 13.0,
    this.textColor = Colors.blue,
    this.textAlign = TextAlign.left,
    this.custom = Icons.help,
  }) : super(key: key);

  final Function()? onPressed;
  final String text;
  final double textSize;
  final Color textColor;
  final TextAlign textAlign;
  final IconData custom;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            textAlign: textAlign,
            style: TextStyle(
              color: textColor,
              fontSize: textSize,
            ),
          ),
          Icon(custom),
        ],
      ),
    );
  }
}
