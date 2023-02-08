import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futureprovider/home.dart';
import 'package:futureprovider/user.dart';

final FetchUserProvider = FutureProvider((ref) {
  final UserRepository = ref.watch(UserRepositoryProvider);
  return UserRepository.fetchUserDate();
});
void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
