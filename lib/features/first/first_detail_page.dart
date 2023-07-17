import 'package:flutter/material.dart';
import 'package:go_router_playground/widgets/router_location_label.dart';

class FirstDetailPage extends StatefulWidget {
  const FirstDetailPage({super.key});

  @override
  State<FirstDetailPage> createState() => _FirstDetailPageState();
}

class _FirstDetailPageState extends State<FirstDetailPage> {
  var _count = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Scaffold in ScaffoldとなってしまうがFloatingActionButtonを表示するために仕方なく
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Center(
        child: Column(
          children: [
            const RouterLocationLabel(),
            Expanded(
              child: Center(
                child: Text(
                  'count: $_count',
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count = _count + 1;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
