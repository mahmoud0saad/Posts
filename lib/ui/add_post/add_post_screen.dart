import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:posts_app/CommonUtils/size_config.dart';
import 'package:posts_app/base/view/base_state.dart';
import 'package:posts_app/generated/l10n.dart';
import 'package:posts_app/res/colors.dart';
import 'package:posts_app/widgets/submit_button_without_border.dart';
import 'package:provider/provider.dart';

import 'add_post_presenter.dart';
import 'add_post_provider.dart';

class AddPostScreen extends StatefulWidget {
  static const String TAG = "/AboutNartaqiScreen";

  @override
  AddPostScreenState createState() => AddPostScreenState();
}

class AddPostScreenState extends BaseState<AddPostScreen, AddPostPresenter>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  AddPostProvider<dynamic> provider = AddPostProvider<dynamic>();

  Color screenColor = MColors.primary_color;

  PickedFile imageFile;
  final ImagePicker _picker = ImagePicker();
  dynamic _pickImageError;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ChangeNotifierProvider<AddPostProvider<dynamic>>(
      create: (_) => provider,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * .07,
          leadingWidth: MediaQuery.of(context).size.height * .07,
          backgroundColor: MColors.page_background,
          centerTitle: true,
          title: Text(
            S.of(context).todoListApp,
            textScaleFactor: SizeConfig.textScaleFactor,
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => {Navigator.pop(context)},
          ),
        ),
        body: Form(
          autovalidateMode: AutovalidateMode.disabled,
          key: formKey,
          child: ListView(
            children: <Widget>[
              buildUploadImageView(context),
              buildTitleTextField(context),
              buildBodyTextField(context),
              SubmitButtonWithoutBorder(
                  onPressed: () {
                    mPresenter.sharePost();
                  },
                  label: S.of(context).add)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildUploadImageView(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _onImageButtonPressed();
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        width: 120,
        height: 120,
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              const Radius.circular(10),
            ),
            image: new DecorationImage(
              image: imageFile != null
                  ? FileImage(File(imageFile.path))
                  : NetworkImage(""),
              fit: BoxFit.cover,
            )),
        child: Visibility(
          visible: imageFile == null,
          child: Icon(
            Icons.camera_enhance,
            size: 30,
            color: MColors.primary_color,
          ),
        ),
      ),
    );
  }

  Widget buildTitleTextField(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      margin: EdgeInsets.symmetric(
          horizontal: SizeConfig.screenWidth * .04,
          vertical: SizeConfig.screenWidth * .04),
      child: TextFormField(
        controller: mPresenter.titleController,
        decoration: InputDecoration(
          fillColor: MColors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          hintText: "title",
          hintStyle: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(fontSize: 14, color: Colors.grey),
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: const BorderRadius.all(
              const Radius.circular(10),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: const BorderRadius.all(
              const Radius.circular(10),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(10),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(10),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(50),
            ),
          ),
        ),
        maxLength: 50,
        maxLengthEnforced: false,
        keyboardType: TextInputType.emailAddress,
        validator: (title) {
          if (title.isEmpty) {
            return S.of(context).titleShouldNotEmpty;
          }
          return null;
        },
        autofocus: false,
        textInputAction: TextInputAction.next,
      ),
    );
  }

  Widget buildBodyTextField(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      margin: EdgeInsets.symmetric(
          horizontal: SizeConfig.screenWidth * .04,
          vertical: SizeConfig.screenWidth * .04),
      child: TextFormField(
        controller: mPresenter.bodyController,
        decoration: InputDecoration(
          fillColor: MColors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(16, 16, 16, 16),
          hintText: S.of(context).body,
          hintStyle: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(fontSize: 14, color: Colors.grey),
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: const BorderRadius.all(
              const Radius.circular(10),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: const BorderRadius.all(
              const Radius.circular(10),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(10),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(10),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(10),
            ),
          ),
        ),
        maxLength: 500,
        minLines: 5,
        maxLines: 6,
        keyboardType: TextInputType.emailAddress,
        validator: (title) {
          if (title.isEmpty) {
            return S.of(context).bodyShouldNotEmpty;
          }
          return null;
        },
        autofocus: false,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  @override
  AddPostPresenter createPresenter() {
    return AddPostPresenter();
  }

  @override
  bool get wantKeepAlive => true;

  goBack() {

    Navigator.of(context).pop();
  }

  void _onImageButtonPressed() async {
    try {
      final pickedFile = await _picker.getImage(
        source: ImageSource.gallery,
      );

      imageFile = pickedFile;
    } catch (e) {
      setState(() {
        _pickImageError = e;
      });
    }
  }
}
