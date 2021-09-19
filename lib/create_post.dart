import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({Key? key}) : super(key: key);

  @override
  _CreatePostPageState createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {

  XFile? _image = XFile("");
  bool _imageSelected = false;

  chooseImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    //if (image == null) return null;
    setState(() {
      _image = image;
      _imageSelected = true;
    });
  }

  String _clothingType = "skirt";
  String _pattern = "plain";

  getResultFromClothesMLModel() {
    //Load ML Model and get result in _clothingType variable
    return _clothingType;
  }

  getResultFromPatternMLModel() {
    //Load ML Model and get result in _pattern variable
    return _pattern;
  }

  getDate() {
    var curDate = new DateTime.now();
    return curDate;
  }

  storeDateAndOutfit() async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final File file = File('${directory.path}/outfitLog.txt');
    await file.writeAsString(_clothingType + " " + _pattern);
  }

  Future<bool> _checkForClothingRepetition() async {
    String text = "";
    try {
      final Directory directory = await getApplicationDocumentsDirectory();
      final File file = File('${directory.path}/outfitLog.txt');
      text = await file.readAsString();
    } catch (e) {
      print("Couldn't read file");
    }

    bool repetition = text.contains(_clothingType+ " " +_pattern) ? true : false;

    addPoints(1);
    return repetition;
  }

  addPoints(int ptsToAdd) async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final File file = File('${directory.path}/points.txt');
    await file.writeAsString(" + " + '$ptsToAdd');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ReWear - Upload #OOTD"),
          backgroundColor: Color(0xff29A877),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            chooseImage();
          },
          child: Icon(
              Icons.image
          ),
        ),
        //body: _imageSelected ? Image.file(File(_image!.path)) : Text("Upload Image")
        body: _imageSelected ? Container(
          child: Image.file(File(_image!.path)),
        ) : Text("Upload Image")
    );
  }
}

