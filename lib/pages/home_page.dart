import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  get child => null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
