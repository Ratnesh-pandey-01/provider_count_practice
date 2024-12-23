import 'package:flutter/material.dart';
import 'package:flutter_application_9/counter_provider.dart';
import 'package:provider/provider.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Next Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                Provider.of<CounterProvider>(context, listen: false)
                    .increment();
              },
              child: Icon(
                Icons.add_circle_outline_sharp,
                color: Colors.cyan,
              ),
            )
          ],
        ),
      ),
    );
  }
}
