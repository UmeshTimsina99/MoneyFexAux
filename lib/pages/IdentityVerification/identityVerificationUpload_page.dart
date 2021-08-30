import 'package:flutter/material.dart';
import 'package:moneyfex_auxagent/utils/extensions.dart';
import 'package:moneyfex_auxagent/widgets/appbar_widget.dart';
import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';
import 'package:moneyfex_auxagent/widgets/navigator_widget.dart';
import 'package:image_picker/image_picker.dart';

class IdentityVerificationUploadPage extends StatefulWidget {
  IdentityVerificationUploadPage({
    Key? key,
  }) : super(key: key);

  @override
  _IdentityVerificationUploadPageState createState() =>
      _IdentityVerificationUploadPageState();
}

class _IdentityVerificationUploadPageState
    extends State<IdentityVerificationUploadPage> {
  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();
  FocusNode f3 = FocusNode();
  String key = '';
  String errorMessage = '';
  String countryCode = "";
  String _countryPhoneCode = '+44';
  int cardTypeId = 0;
  bool isFrontDoc = false;
  bool _load = false;
  bool _disableClick = false;
  String error = '';
  TextEditingController countryController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController dayController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  TextEditingController documentController = TextEditingController();
  TextEditingController identitynumberController = TextEditingController();

  List<File> files = <File>[];
  String name = "";
  var file;
  late String frontDocFile;
  late String backDocFile;
  bool isDisable = false;

  static get fieldReq => null;

  // ignore: unused_element
  _imgFromCamera() async {
    // ignore: invalid_use_of_visible_for_testing_member
    var image = await ImagePicker.platform
        .getImage(source: ImageSource.camera, imageQuality: 50);

    setState(() {
      file = image;
      files.add(file);

      if (isFrontDoc) {
        frontDocFile = convertImageToBase64(file);
      } else {
        backDocFile = convertImageToBase64(file);
      }
    });
  }

  // ignore: unused_element
  _imgFromGallery() async {
    // ignore: invalid_use_of_visible_for_testing_member
    var image = await ImagePicker.platform
        .getImage(source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      file = image;
      files.add(file);
      if (isFrontDoc) {
        frontDocFile = convertImageToBase64(file);
      } else {
        backDocFile = convertImageToBase64(file);
      }
    });
  }

  Future<void> uploadFile() async {
    //FilePickerResult result = await FilePicker.platform.pickFiles();

    // ignore: unnecessary_null_comparison
    // if (result != null) {
    //   //file = File(result.files.single.path);
    // } else {}
  }

  @override
  void initState() {
    _load = false;
    isDisable = false;
    //callDatePicker();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget loadingIndicator = _load
        ? new Container(
            color: Colors.transparent,
            width: 70.0,
            height: 70.0,
            child: new Padding(
                padding: const EdgeInsets.all(5.0),
                child: new Center(child: new CircularProgressIndicator())),
          )
        : new Container();
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: defaultAppBar(
          titleText: "Identity Verification",
          leading: (IconButton(
              icon: Icon(Icons.arrow_back, color: whiteColor),
              onPressed: () {
                Navigator.pop(context);
              })),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      'We need to verify your identity to ensure',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: dialogColor, fontSize: 14),
                    ),
                  ),
                  Center(
                    child: Text('We remain in compilance with Anti-Money',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: dialogColor, fontSize: 14)),
                  ),
                  Center(
                    child: Text('Laundering requirements',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: dialogColor, fontSize: 14)),
                  ),
                  SizedBox(height: 20),
                  Text(error, style: warningStyle),
                  TextField(
                      textInputAction: TextInputAction.next,
                      showCursor: true,
                      readOnly: true,
                      controller: idController,
                      onTap: () {
                        // openPage(
                        //     context,
                        //     (ctx) => IdTypePage(
                        //           onTap: (idtype) {
                        //             setState(() {
                        //               widget.selectedType = idtype;
                        //               idController.text = idtype.name;
                        //               cardTypeId = idtype.id;
                        //             });
                        //           },
                        //           selectedModel: widget.selectedType,
                        //         ));
                      },
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Select Identity Type",
                          labelStyle: contentStyle,
                          suffixIcon: IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            iconSize: 15,
                            onPressed: null,
                          ))),
                  key == 'idType'
                      ? Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(errorMessage, style: warningStyle),
                          ),
                        )
                      : Container(),
                  SizedBox(height: 5),
                  TextField(
                    textInputAction: TextInputAction.next,
                    controller: identitynumberController,
                    decoration: InputDecoration(
                      hintText: 'Enter Identity Number',
                    ),
                  ),
                  key == 'identityNumber'
                      ? Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(errorMessage, style: warningStyle),
                          ),
                        )
                      : Container(),
                  SizedBox(height: 15),
                  Text('Expiry Date',
                      textAlign: TextAlign.start,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      )),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: (String newVal) {
                            var day = int.tryParse(newVal);
                            if (day! > 31) {
                              dayController.text = "";
                              f1.unfocus();
                              FocusScope.of(context).requestFocus(f1);
                            } else {
                              if (newVal.length == 2) {
                                f1.unfocus();
                                FocusScope.of(context).requestFocus(f1);
                              }
                            }
                          },
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.phone,
                          controller: dayController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(hintText: 'DD'),
                        ),
                      ),
                      Expanded(
                          child: TextFormField(
                        keyboardType: TextInputType.number,
                        focusNode: f1,
                        textInputAction: TextInputAction.next,
                        onChanged: (String newVal) {
                          var day = int.tryParse(newVal);
                          if (day! > 12) {
                            monthController.text = "";
                            f1.unfocus();
                            FocusScope.of(context).requestFocus(f2);
                          } else {
                            if (newVal.length == 2) {
                              f2.unfocus();
                              FocusScope.of(context).requestFocus(f2);
                            }
                          }
                        },
                        // onChanged: (String newVal) {
                        //   if (newVal.length == 2) {
                        //     f1.unfocus();
                        //     FocusScope.of(context).requestFocus(f2);
                        //   }
                        // },
                        controller: monthController,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(hintText: 'MM'),
                      )),
                      SizedBox(width: 10),
                      Expanded(
                          child: TextField(
                        autofocus: false,
                        onChanged: (String newVal) {
                          if (newVal.length == 4) {
                            FocusScope.of(context).requestFocus(f3);
                          }
                        },
                        focusNode: f2,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.phone,
                        controller: yearController,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(hintText: 'YYYY'),
                      )),
                    ],
                  ),
                  SizedBox(width: 10),
                  key == 'expiryDate'
                      ? Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(errorMessage, style: warningStyle),
                          ),
                        )
                      : Container(),
                  key == 'expiryMonth'
                      ? Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(errorMessage, style: warningStyle),
                          ),
                        )
                      : Container(),
                  key == 'expiryYear'
                      ? Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(errorMessage, style: warningStyle),
                          ),
                        )
                      : Container(),
                  SizedBox(height: 5),
                  key == 'expirydate'
                      ? Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(errorMessage, style: warningStyle),
                          ),
                        )
                      : Container(),
                  TextField(
                      focusNode: f2,
                      textInputAction: TextInputAction.next,
                      onTap: () {
                        // openPage(
                        //     context,
                        //     (ctx) => CountryListViewPage(
                        //           onTap: (country) {
                        //             setState(() {
                        //               countryController.text = country.name;
                        //               countryCode = country.code;
                        //               _countryPhoneCode = country.phoneCode;
                        //             });
                        //           },
                        //         ));
                      },
                      controller: countryController,
                      showCursor: true,
                      readOnly: true,
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Select Issuing Country",
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                            ),
                            iconSize: 15,
                            onPressed: null,
                          ))),
                  key == 'issuingCountry'
                      ? Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(errorMessage, style: warningStyle),
                          ),
                        )
                      : Container(),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      'Upload a colour copy of identification ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: dialogColor, fontSize: 14),
                    ),
                  ),
                  Center(
                    child: Text('document (PNG, JPEG or PDF format',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: dialogColor, fontSize: 14)),
                  ),
                  Center(
                    child: Text('with maximum size 3MB)',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: dialogColor, fontSize: 14)),
                  ),
                  SizedBox(height: 10),
                  //
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        isFrontDoc = true;
                        // dialog(context);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: Colors.grey.withOpacity(0.2),
                          ),
                        ),
                        child: Container(
                            color: Colors.white,
                            width: 140,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/upload.png',
                                  height: 30,
                                ),
                                Text(
                                  'Upload Document',
                                  style: TextStyle(
                                      color: dialogColor, fontSize: 12),
                                ),
                                Text(
                                  'front',
                                  style: TextStyle(
                                      color: dialogColor, fontSize: 12),
                                ),
                              ],
                            )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        isFrontDoc = false;
                        //dialog(context);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: Colors.grey.withOpacity(0.2),
                            width: 1,
                          ),
                        ),
                        child: Container(
                            color: Colors.white,
                            width: 140,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/upload.png',
                                  height: 30,
                                ),
                                Text(
                                  'Upload Document',
                                  style: TextStyle(
                                      color: dialogColor, fontSize: 12),
                                ),
                                Text(
                                  'back',
                                  style: TextStyle(
                                      color: dialogColor, fontSize: 12),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ]),
            ),
            SizedBox(height: 10),
            Container(
                height: files.length > 1 ? 100 : 60,
                child: ListView.builder(
                    itemCount: files.length, itemBuilder: fileLoader)),
            SizedBox(height: 10),
            new Align(
              child: loadingIndicator,
              alignment: FractionalOffset.topCenter,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: defaultButton(context, "Confirm", onPressed: () {
                // if (widget.model == null) {
                //   widget.model = IdentificationVerificationVm();
                // }
                // widget.model = IdentificationVerificationVm(
                //     idCardTypeId: cardTypeId,
                //     idType: idController.text,
                //     identityNumber: identitynumberController.text,
                //     expiryDate: dayController.text,
                //     expiryMonth: monthController.text,
                //     expiryYear: yearController.text,
                //     issuingCountry: countryCode,
                //     documentFront: frontDocFile,
                //     documentBack: backDocFile);
                // var validateResult = widget.model.validateVm();
                // if (validateResult.result == ResultStatus.Ok) {
                //   setState(() {
                //     _load = true;
                //     errorMessage = "";
                //     error = '';
                //   });
                //   IdenticalInformationService identicalInformationServices =
                //       IdenticalInformationService();
                //   var result = identicalInformationServices
                //       .getSaveSenderIdentityInformation(widget.model)
                //       .then((value) => {
                //             if (value.status == MobileResultStatus.ok.index)
                //               {
                //                 openPage(
                //                     context,
                //                     (ctx) => SuccessPage(
                //                           successIcon: SuccessIcon.info,
                //                           bodyConTent: Column(
                //                             children: [
                //                               Text('Your identity check is ',
                //                                   style: titleStyle1),
                //                               Row(
                //                                 mainAxisAlignment:
                //                                     MainAxisAlignment.center,
                //                                 children: [
                //                                   Text('in',
                //                                       style: titleStyle1),
                //                                   SizedBox(width: 5),
                //                                   Text('Progress ',
                //                                       style: TextStyle(
                //                                           color: primaryColor,
                //                                           fontSize: 20))
                //                                 ],
                //                               ),
                //                             ],
                //                           ),
                //                           btnText: "Done",
                //                           onDone: () {
                //                             openPage(
                //                                 context,
                //                                 (ctx) =>
                //                                     IdentityInformationPage());
                //                           },
                //                         ))
                //               }
                //             else
                //               {
                //                 setState(() {
                //                   _load = false;
                //                   error = value.message;
                //                 })
                //               }
                //           });
                // } else {
                //   setState(() {
                //     errorMessage = validateResult.message;
                //     key = validateResult.key;
                //   });
                // }
              }),
            )
          ]),
        ));
  }

  // Future<Widget> dialog(BuildContext context) {
  //   return showDialog(
  //       context: context,
  //       builder: (_) => new AlertDialog(
  //             title: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Text("Add Photo",
  //                       style: TextStyle(fontWeight: FontWeight.bold)),
  //                   SizedBox(height: 20),
  //                   GestureDetector(
  //                       onTap: () {
  //                         _imgFromGallery();
  //                         Navigator.of(context).pop();
  //                       },
  //                       child: Text('choose existing',
  //                           style: TextStyle(fontSize: 15))),
  //                   SizedBox(height: 20),
  //                   GestureDetector(
  //                       onTap: () {
  //                         _imgFromCamera();
  //                         Navigator.of(context).pop();
  //                       },
  //                       child:
  //                           Text('Take photo', style: TextStyle(fontSize: 15)))
  //                 ]),
  //             actions: <Widget>[
  //               TextButton(
  //                 child: Text('Cancel'),
  //                 onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //               )
  //             ],
  //           ));
  // }

  void removeFile(int index) {
    setState(() {
      files.removeAt(index);
    });
  }

  Widget fileLoader(BuildContext context, int index) {
    var result = files[index];

    String name = index == 0 ? "Front" : "Back"; //basename(result.path);
    return Padding(
      padding: const EdgeInsets.only(left: 37.5, right: 37.5),
      child: Column(
        children: [
          ListTile(
              leading: Image.file(result, height: 50, width: 50),
              title: Text(name),
              trailing: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  removeFile(index);
                },
              ),
              onTap: () {
                //   return showDialog(
                //       useSafeArea: true,
                //       context: context,
                //       builder: (_) => new AlertDialog(
                //           titlePadding: EdgeInsets.zero,
                //           insetPadding: EdgeInsets.zero,
                //           backgroundColor: secondaryColor,
                //           contentPadding: EdgeInsets.zero,
                //           title: Align(
                //             alignment: Alignment.topRight,
                //             child: IconButton(
                //               icon: Icon(
                //                 Icons.close,
                //                 color: whiteColor,
                //               ),
                //               onPressed: () {
                //                 Navigator.pop(context);
                //               },
                //             ),
                //           ),
                //           content: ConstrainedBox(
                //               constraints: const BoxConstraints(minWidth: 330.0),
                //               child: Padding(
                //                 padding: const EdgeInsets.only(bottom: 30),
                //                 child: Container(
                //                     height: 400, child: Image.file(result)),
                //               ))));
                // },
              }),
        ],
      ),
    );
  }

  // @override
  // void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  //   super.debugFillProperties(properties);
  //   properties.add(DiagnosticsProperty<File>('file', file));
  // }
}
