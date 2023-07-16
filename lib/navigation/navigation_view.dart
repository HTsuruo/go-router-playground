import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Scaffold in Scaffoldにならないようにナビゲーション用のViewを作成
// 画面ごとにAppBarを切り替えたいので適当にラッピング
class NavigationView extends StatelessWidget {
  const NavigationView({
    super.key,
    required this.titleLabel,
    required this.child,
  });

  final String titleLabel;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          leading: context.canPop()
              ? BackButton(
                  onPressed: () {
                    context.pop();
                  },
                )
              : null,
          title: Text(titleLabel),
        ),
        Expanded(child: child),
      ],
    );
  }
}
