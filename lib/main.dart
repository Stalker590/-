import 'package:flutter/material.dart';

void main() {
  runApp(const CryptoCurrencyListApp());
}

class CryptoCurrencyListApp extends StatelessWidget {
  const CryptoCurrencyListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Currency List',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 249, 228, 0)),
        scaffoldBackgroundColor: const Color.fromARGB(255, 28, 28, 28),
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            color: const Color.fromARGB(255, 20, 20, 20),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            color: const Color.fromARGB(255, 227, 227, 227),
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),

          bodySmall: TextStyle(
            color: const Color.fromARGB(255, 227, 227, 227),
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      home: const MainPage(title: 'Crypto Currency List'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  final String title; 

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title, style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index){
          return ListTile(
            title: Text("Cryptocurrency $index", style: Theme.of(context).textTheme.bodyMedium,),
            subtitle: Text("${index*1000} USD", style: Theme.of(context).textTheme.bodySmall,),
          );
        },

      ),
    );
  }
}
