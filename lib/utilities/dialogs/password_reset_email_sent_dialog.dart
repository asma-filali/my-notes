import 'package:flutter/material.dart';
import 'package:mynotes/utilities/dialogs/generic_dialog.dart';

Future<void> showPasswordResetEmailSentDialog(BuildContext context) {
  return ShowGenericDialog(
    context: context,
    title: 'Password Reset',
    content:
        'We have  now sent you a reset link. Please check your email for more information',
    optionBuilder: () => {
      'OK': null,
    },
  );
}
