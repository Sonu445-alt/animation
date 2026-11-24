
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/animation_viewmodel.dart';
class AnimationView extends StatelessWidget {
  const AnimationView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Screen'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Consumer<AnimationViewModel>(
        builder: (context, vm, child) {

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,

                  height: vm.animation.size,
                  width: vm.animation.size,

                  decoration: BoxDecoration(
                    color: vm.animation.isAnimated
                        ? Colors.orange
                        : Colors.blue,

                    borderRadius: BorderRadius.circular(
                      vm.animation.isAnimated ? 100 : 10,
                    ),
                  ),

                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 60,
                  ),
                ),

                const SizedBox(height: 40),

                ElevatedButton(
                  onPressed: () {
                    context
                        .read<AnimationViewModel>()
                        .startAnimation();
                  },

                  child: const Text('Start Animation'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
