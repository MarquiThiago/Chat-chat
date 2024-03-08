import 'package:chat_chat/common/infrastructure/injectable/injection.dart';
import 'package:chat_chat/common/presentatio/presents.dart';
import 'package:chat_chat/common/presentatio/widgets/my_alert.dart';
import 'package:chat_chat/common/presentatio/widgets/my_drawer.dart';
import 'package:chat_chat/features/auth/application/auth_controller.dart';
import 'package:chat_chat/features/auth/infrastructure/i_auth_repository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AuthController controller;

  @override
  void initState() {
    controller = AuthController(getIt<IAuthRepository>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      drawer: const MyDrawer(),
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              showAdaptiveDialog(
                context: context,
                builder: (_) => MyAlert(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    title: const Text(Presents.logout),
                    content: const Text(Presents.logoutMessage),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(Presents.cancel),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();

                          controller.logOut();
                        },
                        child: const Text(Presents.confirm),
                      ),
                    ]),
              );
            },
            icon: const Icon(Icons.logout),
          ),
        ],
        title: const Text(Presents.home),
      ),
    );
  }
}
