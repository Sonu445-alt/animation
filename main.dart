
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/view/animation_view.dart';
import 'package:untitled/viewmodel/animation_viewmodel.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_) => AnimationViewModel(),

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const AnimationView(),
      ),
    );
  }
}
