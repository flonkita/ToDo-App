import 'package:flutter/material.dart';
import 'package:todo/util/button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[250],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Nouvelle tâche"),
          ),

          // Créer - Annuler
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Créer
              Button(text: 'Créer', onPressed: onSave),

              const SizedBox(width: 8),
              // Qnnuler
              Button(text: 'Annuler', onPressed: onCancel),
            ],
          ),
        ]),
      ),
    );
  }
}
