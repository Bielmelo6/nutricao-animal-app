import 'package:thunderapp/components/utils/horizontal_spacer_box.dart';
import 'package:thunderapp/screens/screens_index.dart';
import 'package:thunderapp/shared/constants/app_enums.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';
import 'package:flutter/material.dart';

class DeleteAnimalDialog extends StatelessWidget {
  const DeleteAnimalDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Excluir animal?',
        style: TextStyle(
          color: kText,
          fontSize: 20,
        ),
      ),
      content: const Text(
        'Você tem certeza que deseja excluir este animal?',
        style: TextStyle(
          color: kText,
          fontSize: 15,
        ),
      ),
      actions: [
        Center(
          child: Wrap(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                // ignore: sort_child_properties_last
                child: const Text(
                  'Cancelar',
                  style: TextStyle(
                    color: kBackgroundColor,
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: kDetailColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const HorizontalSpacerBox(size: SpacerSize.large),
              ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, Screens.home);
                },
                // ignore: sort_child_properties_last
                child: const Text(
                  'Excluir',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: kTextButtonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
