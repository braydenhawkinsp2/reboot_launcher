import 'package:fluent_ui/fluent_ui.dart';
import 'package:reboot_launcher/src/dialog/abstract/dialog.dart';
import 'package:reboot_launcher/src/dialog/abstract/dialog_button.dart';
import 'package:reboot_launcher/src/util/translations.dart';

Future<void> showResetDialog(Function() onConfirm) => showAppDialog(
    builder: (context) => InfoDialog(
      text: translations.resetDefaultsDialogTitle,
      buttons: [
        DialogButton(
          type: ButtonType.secondary,
          text: translations.resetDefaultsDialogSecondaryAction,
        ),
        DialogButton(
          type: ButtonType.primary,
          text: translations.resetDefaultsDialogPrimaryAction,
          onTap: () {
            onConfirm();
            Navigator.of(context).pop();
          },
        )
      ],
    )
);