import 'package:chat_chat/common/presentatio/widgets/box_spacer.dart';
import 'package:chat_chat/common/presentatio/widgets/my_tile.dart';
import 'package:chat_chat/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              radius: 50,
              child: const Icon(
                Icons.person,
              ),
            ),
            const BoxSpacer(),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              title: const Text('Theme Mode'),
              leading: const Icon(Icons.sunny),
              onTap: () => Provider.of<ThemeProvider>(context, listen: false)
                  .toggleTheme(),
            ),
            const MyTile(
              title: 'HOME',
              icon: Icons.home,
            ),
          ],
        ),
      ),
    );
  }
}
