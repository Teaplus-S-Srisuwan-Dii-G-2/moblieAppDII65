import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  final CarouselController _carouselController = new CarouselController();
  Uint8List? _file;
  bool isLoading = false;

  _selectImage(BuildContext parentContext) async {
    return showDialog(
      context: parentContext,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Create a Post'),
          children: <Widget>[
            SimpleDialogOption(
                padding: const EdgeInsets.all(20),
                child: const Text('Take a photo'),
                onPressed: () async {
                  Navigator.pop(context);
                  Uint8List file = await pickImage(ImageSource.camera);
                  setState(() {
                    _file = file;
                  });
                }),
            SimpleDialogOption(
                padding: const EdgeInsets.all(20),
                child: const Text('Choose from Gallery'),
                onPressed: () async {
                  Navigator.of(context).pop();
                  Uint8List file = await pickImage(ImageSource.gallery);
                  setState(() {
                    _file = file;
                  });
                }),
            SimpleDialogOption(
              padding: const EdgeInsets.all(20),
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      },
    );
  }

  pickImage(ImageSource source) async {
    final ImagePicker _imagePicker = ImagePicker();
    XFile? _file = await _imagePicker.pickImage(source: source);
    if (_file != null) {
      return await _file.readAsBytes();
    }
    print('No Image Selected');
  }

  final List<String> image = [
    'https://media.giphy.com/media/AL4z1cASOArdlobY9u/giphy.gif',
    'https://media2.giphy.com/media/fuExCc3tl9qxMuvmII/giphy.gif'
  ];
  int _selectindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            Container(
                child: Column(children: [
              CarouselSlider(
                  carouselController: _carouselController,
                  options: CarouselOptions(
                      height: 500,
                      viewportFraction: 1,
                      onPageChanged: (index, reson) {
                        setState(() {
                          _selectindex = index;
                        });
                      }),
                  items: image
                      .map(
                        (image) => Builder(
                            builder: (context) => Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(image),
                                        fit: BoxFit.cover),
                                  ),
                                )),
                      )
                      .toList()),
              Container(
                  margin: const EdgeInsets.only(top: 80),
                  child: Column(
                    children: [
                      _file == null
                          ? Positioned(
                              right: MediaQuery.of(context).size == null
                                  ? 0
                                  : MediaQuery.of(context).size.width * 0.22,
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: const Offset(3, 3),
                                          blurRadius: 10,
                                          spreadRadius: 1,
                                          color: Colors.grey.shade400
                                              .withOpacity(0.8)),
                                    ]),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.add_a_photo,
                                    size: 50,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    _selectImage(context);
                                  },
                                ),
                              ),
                            )
                          : Positioned(
                              right: MediaQuery.of(context).size == null
                                  ? 0
                                  : MediaQuery.of(context).size.width * 0.22,
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: MemoryImage(_file!),
                                      fit: BoxFit.cover,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          offset: const Offset(3, 3),
                                          blurRadius: 10,
                                          spreadRadius: 1,
                                          color: Colors.grey.shade400
                                              .withOpacity(0.8)),
                                    ]),
                              ),
                            ),
                    ],
                  )),
            ])),
          ],
        ));
  }
}
