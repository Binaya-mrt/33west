import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Gotham',
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: Text('33 westsky bar'),
          actions: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/waiter.svg',
                color: Colors.blue, // Optionally set the color
                width: 24, // Optionally set the width
                height: 24, // Optionally set the height
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/cart.svg',
                color: Colors.blue, // Optionally set the color
                width: 24, // Optionally set the width
                height: 24, // Optionally set the height
              ),
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/more.svg',
              color: Colors.blue, // Optionally set the color
              width: 24, // Optionally set the width
              height: 24, // Optionally set the height
            ),
            onPressed: () {},
          ),
          bottom: TabBar(tabs: [
            Text('Home'),
            Text('Salads'),
            Text('Entree'),
            Text('Soups'),
            Text('Drinks'),
            Text('Entree'),
            Text('Soups'),
            Text('Drinks'),
            Text('Entree'),
            Text('Soups'),
          ]),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.flight, size: 350),
            Salad(),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.directions_car, size: 350),
          ],
        ),
      ),
    );
  }
}

class Salad extends StatelessWidget {
  const Salad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(10)),
              height: MediaQuery.of(context).size.height / 3,
            )
          ],
        ),
      ),
    );
  }
}
