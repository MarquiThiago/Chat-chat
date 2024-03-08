// ignore_for_file: avoid-non-null-assertion

import 'package:chat_chat/constants/const_space.dart';
import 'package:flutter/material.dart';

/// A StatelessWidget that represents a customizable alert dialog.
///
/// The alert dialog includes customizable title, content and actions.
/// The content's width is constrained by `DSConstSize.maxDialogContentWidth`.
/// Padding for actions is determined by `DSConstSpace.medium`.
class MyAlert extends StatelessWidget {
  /// Creates a [MyAlert].
  ///
  /// The [title], [content], and [actions] arguments must not be null.
  const MyAlert({
    required this.title,
    required this.content,
    required this.actions,
    this.backgroundColor,
    this.showCloseButton = false,
    super.key,
  });

  /// The widget that is displayed as the title of the dialog.
  final Widget title;

  /// The background color of the alert dialog
  final Color? backgroundColor;

  /// The widget that is displayed as the content of the dialog.
  ///
  /// The width of the content is constrained
  /// by [DSConstSize.maxDialogContentWidth].
  final Widget content;

  /// A list of widgets that are displayed as actions
  /// at the bottom of the dialog.
  ///
  /// Actions are typically [ElevatedButton], [TextButton],
  /// or [OutlinedButton] widgets.
  /// The actions are displayed below the content by default.
  /// The padding for these actions is determined by [DSConstSpace.medium].
  final List<Widget> actions;

  /// Decides to show a close button on the tittle or not
  final bool showCloseButton;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: backgroundColor != null
          ? RoundedRectangleBorder(
              side: BorderSide(color: backgroundColor!),
              borderRadius: (Theme.of(context).dialogTheme.shape
                      as RoundedRectangleBorder)
                  .borderRadius,
            )
          : null,
      insetPadding: const EdgeInsets.all(ConstSpace.medium),
      backgroundColor: backgroundColor,
      title: showCloseButton
          ? Row(
              children: [
                const SizedBox(width: 48),
                Expanded(child: title),
                const CloseButton(),
              ],
            )
          : title,
      content: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 380,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            content,
          ],
        ),
      ),
      titlePadding: showCloseButton
          ? const EdgeInsets.fromLTRB(
              ConstSpace.large,
              ConstSpace.small,
              ConstSpace.small,
              0,
            )
          : const EdgeInsets.fromLTRB(
              ConstSpace.large,
              ConstSpace.large,
              ConstSpace.large,
              0,
            ),
      actions: actions,
      actionsPadding: const EdgeInsets.fromLTRB(
        ConstSpace.medium,
        0,
        ConstSpace.medium,
        ConstSpace.medium,
      ),
    );
  }
}
