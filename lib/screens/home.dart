import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const LateralDrawer(),
      body: const HomeScreenWidget(),
    );
  }
}

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: const Text(
            'Bienvenido',
            style: TextStyle(fontSize: 45),
          ),
        )
      ],
    );
  }
}

class LateralDrawer extends StatelessWidget {
  const LateralDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(
            width: 1000,
            child: FadeInImage(
              placeholder: AssetImage('assets/J&A TECHNOLOGY.png'),
              image: AssetImage('assets/J&A TECHNOLOGY.png'),
              fit: BoxFit.contain,
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(Icons.person),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Clientes'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.production_quantity_limits_outlined),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Mercancia'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.shopping_cart_outlined),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Registrar compra de mercancias'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
