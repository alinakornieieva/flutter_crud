import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact List'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const TextField(
                decoration: InputDecoration(
              isDense: true,
              hintText: 'Contact Name',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(
                    width: 1,
                  )),
            )),
            const SizedBox(height: 15),
            const TextField(
                decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Contact Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          width: 1,
                        )))),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Save')),
                const SizedBox(width: 15),
                ElevatedButton(onPressed: () {}, child: const Text('Update'))
              ],
            ),
            // Expanded(
            //   child: ListView.builder(
            //       itemCount: 3,
            //       itemBuilder: (context, index) => const ListTile(
            //             leading: Icon(Icons.person),
            //             title: Text('User Name'),
            //             subtitle: Text('0990004784'),
            //             trailing: Row(
            //               children: [Icon(Icons.edit), Icon(Icons.delete)],
            //             ),
            //           )),
            // )
          ],
        ),
      ),
    );
  }
}
