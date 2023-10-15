import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social/utils/colors.dart';
import 'package:social/widgets/common_dropdown.dart';
import 'package:social/widgets/common_textfeild.dart';
import 'package:social/widgets/custom_text.dart';


class AddPostScreen extends StatefulWidget {
  const AddPostScreen({Key? key}) : super(key: key);

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final TextEditingController captionController = TextEditingController();
   final MultiValueDropDownController _cntMulti = MultiValueDropDownController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add post"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText(text: "Add Image for post"),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(color: AppColors.appPrimaryColor),
                  width: 300,
                  height: 400,
                  child: const Center(
                    child: Icon(CupertinoIcons.camera),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText(text: "Add Caption for post"),
              ),
              CommonTextField(controller: captionController, hintText: 'Add Caption here', obscureText: false,),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText(text: "Tag your friend"),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const MultiSelectDropdown())
            ],
          ),
        ),
      ),
    );
  }
}

