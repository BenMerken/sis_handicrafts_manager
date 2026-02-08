import 'package:flutter/material.dart';
import 'package:sis_handicrafts_manager/utils/forms/validators/text/text_input_validators.dart';
import 'package:sis_handicrafts_manager/utils/forms/validators/validators.dart';
import 'package:sis_handicrafts_manager/domain/models/collection/collection.dart';

class EditCollectionForm extends StatefulWidget {
  final Collection collection;
  final VoidCallback onCancel;

  const EditCollectionForm({
    super.key,
    required this.collection,
    required this.onCancel,
  });

  @override
  State<EditCollectionForm> createState() => _EditCollectionFormState();
}

class _EditCollectionFormState extends State<EditCollectionForm> {
  final _formKey = GlobalKey<FormState>();

  void _processForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    final collection = widget.collection;

    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Form(
        key: _formKey,
        child: Column(
          spacing: 16,
          children: [
            Text(
              "Collectie aanpassen",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            TextFormField(
              initialValue: collection.name,
              decoration: const InputDecoration(
                labelText: "Naam",
                helperText: "",
              ),
              validator: Validators.compose([
                TextInputValidators.required(),
                TextInputValidators.maxLength(50),
              ]),
            ),
            TextFormField(
              initialValue: collection.magazine,
              decoration: const InputDecoration(
                labelText: "Tijdschrift",
                helperText: "",
              ),
              validator: Validators.compose([TextInputValidators.nonEmpty()]),
            ),
            TextFormField(
              initialValue: collection.implementation,
              decoration: const InputDecoration(
                labelText: "Uitvoering",
                helperText: "",
              ),
              validator: Validators.compose([TextInputValidators.nonEmpty()]),
            ),
            TextFormField(
              initialValue: collection.implementationNumber,
              decoration: const InputDecoration(
                labelText: "Nummer",
                helperText: "",
              ),
              validator: Validators.compose([TextInputValidators.nonEmpty()]),
            ),
            TextFormField(
              initialValue: collection.sizes.join(", "),
              decoration: const InputDecoration(
                labelText: "Maten",
                helperText: "",
              ),
              validator: Validators.compose([TextInputValidators.nonEmpty()]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 16,
              children: [
                ElevatedButton(
                  onPressed: _processForm,
                  child: Text("Aanpassen"),
                ),
                ElevatedButton(
                  onPressed: widget.onCancel,
                  child: const Text("Annuleren"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
