import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  final int counter;
  final VoidCallback onDecrementPressed;
  final VoidCallback onIncrementPressed;
  final VoidCallback onRandomPressed;
  final VoidCallback onZeroPressed;

  const MyHomePage({
    super.key,
    required this.title,
    required this.counter,
    required this.onDecrementPressed,
    required this.onIncrementPressed,
    required this.onRandomPressed,
    required this.onZeroPressed,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${widget.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: widget.onDecrementPressed,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: widget.onIncrementPressed,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: widget.onRandomPressed,
            tooltip: 'Random',
            child: const Icon(Icons.all_inclusive),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: widget.onZeroPressed,
            tooltip: 'Zero',
            child: const Icon(Icons.restart_alt),
          ),
        ],
      ),
    );
  }
}
