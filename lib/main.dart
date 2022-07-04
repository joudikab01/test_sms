import 'dart:html';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_sms/providers/providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  // //late FilePickerResult result;
  //
  //
  // PlatformFile? file;
  //
  // void selectFile() async {
  //   // var progress = "";
  //   // FilePickerResult? result = await FilePicker.platform.pickFiles();
  //   // if (result != null) {
  //   //   setState(() {
  //   //     file = result.files.single;
  //   //     print(file?.path);
  //   //   });
  //   // }
  // }
  // FilePickerResult? result;
  //   Future pickFile() async {
  //     result = await FilePicker.platform.pickFiles(
  //       type: FileType.any,
  //     );
  //     print(result?.files.);
  //     if (result?.files.first != null) {
  //       //print(result?.files.first.bytes);
  //       //return file;
  //     } else {
  //       throw "Cancelled File Picker";
  //     }
  //   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: TextButton(
          child: Text(
            'add pic',
          ),
          onPressed: () async {
           //pickFile();
            Provider.of<AppProvider>(context, listen: false).addStudent(
                picture: result,
                email: 'j@gmail.com',
                f_name: 'jj',
                l_name: 'kk',
                nationality: 1,
                birthdate: DateTime(2017, 1, 1),
                blood_id: 1,
                gender_id: 1,
                religion_id: 1,
                grade_id: 1,
                class_id: 1,
                classroom_id: 1,
                academic_year_id: 1,
                national_number: '0123400005600',
                city: 'dd',
                town: 'dd',
                street: 'mi');
            // FilePickerResult? result = await FilePicker.platform.pickFiles();
            //
            // if (result != null) {
            //   File file = File(result.files.single.path);
            // } else {
            //   // User canceled the picker
            // }
          },
        ),
      ),
    );
  }
}
