import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:intersperse/intersperse.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              context.push('/detail');
            },
            child: const Text('context.push()'),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/detail');
            },
            child: const Text('context.go()'),
          )
        ].intersperseOuter(const Gap(16)).toList(),
      ),
    );
  }
}
