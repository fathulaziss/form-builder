import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:form_builder/data/sample_form_data.dart';
import 'package:json_to_form/json_schema.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final formString = jsonEncode(sampleFormData);

  Map decorations = {};

  Map keyboardTypes = {};

  Map validations = {};

  dynamic validationExample(field, value) {
    if (value == null) {
      return 'Please enter some text';
    }
    return '';
  }

  void onChanged(dynamic value) {
    final List fields = value['fields'];
    for (final data in fields) {
      log('value ${data['key']} : ${data['value']}');
    }
  }

  void initForm() {
    final List fields = sampleFormData['fields'];
    for (final data in fields) {
      if (data['key'] == 'inputKey1') {
        decorations.addAll({
          data['key']: const InputDecoration(
            labelText: 'Enter Your Name',
            prefixIcon: Icon(Icons.account_box),
            border: OutlineInputBorder(),
          ),
        });

        keyboardTypes.addAll({data['key']: TextInputType.text});

        validations.addAll({data['key']: validationExample});
      }

      if (data['key'] == 'inputKey2') {
        decorations.addAll({
          data['key']: const InputDecoration(
            labelText: 'Enter Your Phone Number',
            prefixIcon: Icon(Icons.phone_android),
            border: OutlineInputBorder(),
          ),
        });

        keyboardTypes.addAll({data['key']: TextInputType.number});

        validations.addAll({data['key']: validationExample});
      }
    }
  }

  @override
  void initState() {
    super.initState();
    initForm();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main View')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              JsonSchema(
                decorations: decorations,
                validations: validations,
                form: formString,
                onChanged: onChanged,
                keyboardTypes: keyboardTypes,
                actionSave: () {
                  log('do this');
                },
                buttonSave: Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.blueAccent,
                  child: const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
