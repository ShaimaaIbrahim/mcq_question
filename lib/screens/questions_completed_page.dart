import 'package:exam_app/utils/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompletedQuestionsPage extends StatelessWidget {
  const CompletedQuestionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: bold25Text('Questions Finished'),
        ),
      ),
    );
  }
}
