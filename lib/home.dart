import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futureprovider/main.dart';
import 'package:futureprovider/user.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(FetchUserProvider).when(
      data: (data) {
        return Scaffold(
            appBar: AppBar(),
            body: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) => ListTile(
                title: Text(data.name),
                subtitle: Text(data.email),
              ),
            ));
      },
      error: (error, stackTrace) {
        return Center(
          child: Text(error.toString()),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
