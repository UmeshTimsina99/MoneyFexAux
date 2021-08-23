import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:moneyfex_auxagent/widgets/button_widget.dart';
import 'package:moneyfex_auxagent/widgets/color_widget.dart';

class TransactionEstimationPage extends StatefulWidget {
  TransactionEstimationPage({
    Key? key,
  }) : super(key: key);

  @override
  _TransactionEstimationPageState createState() =>
      _TransactionEstimationPageState();
}

class _TransactionEstimationPageState extends State<TransactionEstimationPage> {
  TextEditingController yousendController = TextEditingController();
  TextEditingController theyreceiveController = TextEditingController();
  // int senderId = RSession.senderId;
  int _radioValue = 0;

  // List<BanktypeRadio> transactiontype = [
  //   BanktypeRadio(1, 'Bank Account', false),
  //   BanktypeRadio(2, 'Mobile Account', false),
  //   BanktypeRadio(3, 'Cash Pickup', false),
  //   BanktypeRadio(4, 'kiiPay Wallet', false),
  // ];
  String currencycode = ' ';
  String code = '';
  String currencySymbol = '0.00';
  // String sendingCurrency = "GBP";
  // String sendingCountry = "GB";
  // String sendingCurrency = RSession.sendingCurrency;
  // String sendingCountry = RSession.sendingCountry;
  String receivingCountry = "NG";
  String recevingCurrency = "NGN";

  String receivingcurrencySymbol = '0.00';
  // int selectedMethod;

  //EstimationSummaryRequestModel requestModel;
  //TransferMethod transferMethod;
  //EstimationSummaryResponseModel responseModel;

  double exchangeRate = 0;
  double fee = 0;
  String sendingCurrencySymbol = "";
  String receivingCurrencySymbol = "";
  bool load = false;

  bool _bankEnabled = false;
  bool _mobileEnabled = false;
  bool _cashEnabled = false;
  bool _kiipayEnabled = false;
  int defaultTransferMethod = 1;
  bool isFirstLoad = false;

  String _countryPhoneCode = "+234";

  String errormsg = "";

  void disableAllDelieryMethod() {
    setState(() {
      _bankEnabled = false;
      _mobileEnabled = false;
      _cashEnabled = false;
      _kiipayEnabled = false;
      _radioValue = 0;
    });
  }

  void _handleRadioValueChange(int value) {
    setState(() {
      // _radioValue = value;
      // selectedMethod = value;
      // switch (selectedMethod) {
      //   case 1:
      //     transferMethod = TransferMethod.BankDeposit;
      //     break;
      //   case 2:
      //     transferMethod = TransferMethod.OtherWallet;
      //     break;
      //   case 3:
      //     transferMethod = TransferMethod.CashPickUp;
      //     break;
      //   case 4:
      //     transferMethod = TransferMethod.KiiPayWallet;
      //     break;
      //   default:
      //     transferMethod = TransferMethod.Select;
      //     break;
      // }

      // requestModel.transferMethod = transferMethod.index;
      getEstimationSummary();
    });
  }

  void enableSerices() {
    // TransferService enum type

    _bankEnabled = false;
    _mobileEnabled = false;
    _cashEnabled = false;
    _kiipayEnabled = false;
    // var services = responseModel.services;
    // for (var item in services) {
    //   if (item.isEnabled) {
    //     switch (item.transferMethod) {
    //       case 1:
    //         _kiipayEnabled = true;
    //         defaultTransferMethod = 4;
    //         break;
    //       case 2:
    //         defaultTransferMethod = 1;
    //         _bankEnabled = true;
    //         break;
    //       case 3:
    //         defaultTransferMethod = 3;
    //         _cashEnabled = true;
    //         break;
    //       case 4:
    //         defaultTransferMethod = 2;
    //         _mobileEnabled = true;
    //         break;
    //       case 5:
    //         //defaultTransferMethod = 2;
    //         //_mobileEnabled = true;
    //         break;
    //       default:
    //         defaultTransferMethod = 0;
    //         break;
    //     }
    //   } else {
    //     defaultTransferMethod = 0;
    //   }
    // }

    // if (services.length == 0) {
    //   defaultTransferMethod = 0;
    // }
    // if (isFirstLoad == true) {
    //   setDefaultMethod();
    // }
  }

  void setDefaultMethod() {
    // switch (defaultTransferMethod) {
    //   case 1:
    //     _radioValue = 1;
    //     selectedMethod = 1;
    //     break;
    //   case 2:
    //     _radioValue = 2;
    //     selectedMethod = 2;
    //     break;
    //   case 3:
    //     _radioValue = 3;
    //     selectedMethod = 3;
    //     break;
    //   case 4:
    //     _radioValue = 4;
    //     selectedMethod = 4;
    //     break;

    //   default:
    //     _radioValue = 0;
    //     selectedMethod = 0;
    //     break;
    // }

    setState(() {
      isFirstLoad = false;
    });
  }

  void getEstimationSummary() {
    //   EstimationSummaryServices estimationSummaryServices =
    //       EstimationSummaryServices();
    //   estimationSummaryServices.getEstimatedSummary(requestModel).then((value) {
    //     if (value.status == MobileResultStatus.ok.index) {
    //       setState(() {
    //         load = false;
    //         responseModel = value.data;
    //         exchangeRate = responseModel.model.exchangeRate;
    //         fee = responseModel.model.fee;
    //         if (requestModel.isReceivingAmount) {
    //           if (theyreceiveController.text == null ||
    //               theyreceiveController.text == "") {
    //             yousendController.text = "0";
    //           } else {
    //             yousendController.text =
    //                 responseModel.model.sendingAmount.toString();
    //           }
    //         } else {
    //           if (yousendController.text == null ||
    //               yousendController.text == "") {
    //             theyreceiveController.text = "0";
    //           } else {
    //             theyreceiveController.text =
    //                 responseModel.model.receivingAmount.toString();
    //           }
    //         }
    //         sendingCurrencySymbol = responseModel.model.sendingCurrencySymbol;

    //         receivingCurrencySymbol = responseModel.model.receivingCurrencySymbol;

    //         if (isFirstLoad) {
    //           _radioValue = 0;
    //           enableSerices();
    //         }
    //         print(responseModel);
    //       });
    //     }
    //   });
    // }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //requestModel = EstimationSummaryRequestModel();
    // requestModel.sendingCountry = sendingCountry;
    // requestModel.receivingCountry = receivingCountry;
    // requestModel.sendingCurrency = sendingCurrency;
    // requestModel.receivingCurrency = recevingCurrency;
    // requestModel.sendingAmount = 3;
    // requestModel.receivingAmount = 0;
    // requestModel.senderId = senderId;
    // requestModel.isReceivingAmount = false;
    //requestModel.transferMethod = TransferMethod.BankDeposit.index;
    yousendController.text = "3";
    //load = true;
    getEstimationSummary();
  }

  @override
  Widget build(BuildContext context) {
    Widget loadingIndicator = load
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 0.0,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text("sendingCurrency" +
                      " 1 = " +
                      exchangeRate.toString() +
                      " " +
                      recevingCurrency),
                ),
                IconButton(
                    icon: Icon(
                      Icons.contact_support_sharp,
                      size: 20,
                    ),
                    onPressed: () {
                      // Fluttertoast.showToast(
                      //   msg:
                      //       'This intoductory rate is for your first transfer with moneyfex',
                      //   //toastLength: Toast.LENGTH_SHORT,
                      //   //gravity: ToastGravity.TOP,
                      //   timeInSecForIos: 1,
                      //   backgroundColor: whiteColor,
                      //   textColor: secondaryColor,
                      // );
                    })
              ],
            ),
            Text(
              "Fee: " + sendingCurrencySymbol + " " + fee.toString(),
            ),
          ],
        ),
        toolbarHeight: 90,
      ),
      body: load == true
          ? Center(child: loadingIndicator)
          : SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Container(
                        child: Column(
                      children: [
                        TextField(
                          controller: yousendController,
                          // style: estimationstyle,
                          decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              labelText: 'You send',
                              labelStyle: titleStyle5,
                              hintText: currencySymbol,
                              // hintStyle: estimationstyle,
                              suffixIcon: GestureDetector(
                                child: Container(
                                  width: 120,
                                  height: 60,
                                  child: Row(
                                    children: [
                                      VerticalDivider(
                                        thickness: 2,
                                      ),
                                      // Expanded(child: Text(sendingCurrency)),
                                      // Padding(
                                      //   padding: const EdgeInsets.only(
                                      //       right: 5, left: 5),
                                      //   child: Expanded(
                                      //       child: SvgPicture.network(
                                      //     height: 25,
                                      //   )),
                                      // ),
                                      Expanded(
                                        child: IconButton(
                                            icon: Icon(Icons.arrow_drop_down),
                                            color: secondaryColor,
                                            onPressed: null),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                          onChanged: (value) {
                            var sendingAmount = double.tryParse(value);

                            sendingAmount =
                                sendingAmount == null ? 0 : sendingAmount;
                            if (sendingAmount == 0) {
                              theyreceiveController.text = "0";
                            }
                            if (sendingAmount > 0) {
                              // if (sendingAmount != requestModel.sendingAmount) {
                              //   requestModel.sendingAmount = sendingAmount;
                              //   requestModel.isReceivingAmount = false;
                              //   getEstimationSummary();
                              // }
                            }
                          },
                          keyboardType: TextInputType.number,
                        ),
                        TextField(
                          controller: theyreceiveController,
                          // style: estimationstyle,
                          decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              labelText: 'They receive',
                              labelStyle: titleStyle5,
                              hintText: receivingcurrencySymbol,
                              // hintStyle: estimationstyle,
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  disableAllDelieryMethod();
                                },
                                child: Container(
                                  width: 120,
                                  height: 60,
                                  child: Row(
                                    children: [
                                      VerticalDivider(
                                        thickness: 2,
                                      ),
                                      Expanded(child: Text(recevingCurrency)),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              right: 5, left: 5),
                                          child: Expanded(
                                            child: SvgPicture.network(
                                              //"assets/images/" + countryCode + ".png",
                                              "https://moneyfex.com:8888/Content/flags/" +
                                                  "ng".toLowerCase() +
                                                  ".svg",
                                              height: 25,
                                            ),
                                          )),
                                      Expanded(
                                        child: IconButton(
                                            icon: Icon(Icons.arrow_drop_down),
                                            color: secondaryColor,
                                            onPressed: () {
                                              //   openPage(
                                              //       context,
                                              //       (ctx) => CurrencyListPage(
                                              //             country: sendingCountry,
                                              //             onTap:
                                              //                 (CurrencyCodeModel
                                              //                     currency) {
                                              //               setState(() {
                                              //                 isFirstLoad = true;
                                              //                 recevingCurrency =
                                              //                     currency
                                              //                         .currencyCode;
                                              //                 receivingCountry =
                                              //                     currency.code;
                                              //                 receivingcurrencySymbol =
                                              //                     currency
                                              //                         .currencySymbol;
                                              //                 requestModel
                                              //                         .receivingCountry =
                                              //                     currency.code;
                                              //                 requestModel
                                              //                         .receivingCurrency =
                                              //                     currency
                                              //                         .currencyCode;
                                              //                 _countryPhoneCode =
                                              //                     currency
                                              //                         .countryPhoneCode;
                                              //                 setState(() {
                                              //                   errormsg = "";
                                              //                 });
                                              //                 getEstimationSummary();
                                              //               });
                                              //             },
                                              //           ));
                                            }),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                          onChanged: (value) {
                            if (value == "") {
                              setState(() {
                                // theyreceiveController.text = "";
                              });
                            }
                            var receivingAmount = double.parse(value);

                            if (receivingAmount < 1) {
                              // requestModel.sendingAmount = 3;
                            }
                            // if (requestModel.receivingAmount !=
                            //     receivingAmount) {
                            //   requestModel.receivingAmount =
                            //       double.parse(value);
                            //   requestModel.isReceivingAmount = true;
                            //   getEstimationSummary();
                            // }
                          },
                          keyboardType: TextInputType.number,
                        ),
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 200),
                          child: Text('Select delivery method',
                              style: titleStyle5),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Row(children: [
                            Expanded(
                                child: GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: Image.asset(
                                            "assets/images/bank.png",
                                            height: 25,
                                            color: _bankEnabled == false
                                                ? Colors.black.withOpacity(0.7)
                                                : null,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 10),
                                          child: Center(
                                            child: Text(
                                              "",
                                              textAlign: TextAlign.center,
                                              style: deleverystyle,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: new Radio(
                                            value: 0,
                                            groupValue: _radioValue,
                                            onChanged: _kiipayEnabled == false
                                                ? null
                                                : null,
                                          ),
                                        ),
                                      ],
                                    ))),
                            Expanded(
                                child: GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: Image.asset(
                                            "assets/images/mobile-money.png",
                                            height: 30,
                                            color: _mobileEnabled == false
                                                ? Colors.black.withOpacity(0.7)
                                                : null,
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 10),
                                            child: Text(
                                              "",
                                              textAlign: TextAlign.center,
                                              style: deleverystyle,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: new Radio(
                                            value: 1,
                                            groupValue: _radioValue,
                                            onChanged: _kiipayEnabled == false
                                                ? null
                                                : null,
                                          ),
                                        ),
                                      ],
                                    ))),
                            Expanded(
                                child: GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: Image.asset(
                                            "assets/images/cash-pickup.png",
                                            height: 30,
                                            color: _cashEnabled == false
                                                ? Colors.black.withOpacity(0.7)
                                                : null,
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 10),
                                            child: Text(
                                              "",
                                              //transactiontype[2].transfertype,
                                              textAlign: TextAlign.center,
                                              style: deleverystyle,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: new Radio(
                                            value: 2,
                                            //DeliveryMethod.CahPickUp.index,
                                            groupValue: _radioValue,
                                            onChanged: _kiipayEnabled == false
                                                ? null
                                                : null,
                                          ),
                                        ),
                                      ],
                                    ))),
                            Expanded(
                                child: GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.only(
                                              left: 10,
                                            ),
                                            child: Image.asset(
                                              "assets/images/kiipay.png",
                                              height: 30,
                                              color: _kiipayEnabled == false
                                                  ? Colors.black
                                                      .withOpacity(0.7)
                                                  : null,
                                            )),
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 10),
                                            child: Text(
                                              "",
                                              textAlign: TextAlign.center,
                                              style: deleverystyle,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: new Radio(
                                            value: 3,
                                            // value: DeliveryMethod
                                            //     .KiiPayWallet.index,
                                            groupValue: _radioValue,
                                            onChanged: _kiipayEnabled == false
                                                ? null
                                                : null,
                                          ),
                                        ),
                                      ],
                                    ))),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Divider(
                            thickness: 3,
                          ),
                        )
                      ],
                    ),
                  ),
                  errormsg == ""
                      ? Container()
                      : Text(
                          errormsg,
                          style: warningStyle,
                        ),
                  SizedBox(height: 40),
                  defaultButton(context, 'Transfer', onPressed: () {
                    var sendingAmount = double.tryParse(yousendController.text);
                    if (sendingAmount == null) {
                      sendingAmount = 0;
                    }
                    if (sendingAmount < 1) {
                      setState(() {
                        errormsg = "Enter an amount";
                      });
                      return -1;
                    } else {}
                    // responseModel.model.receivingPhoneCode =
                    //     _countryPhoneCode;
                    // switch (selectedMethod) {
                    //   case 1:
                    //openPage(context, (ctx) => BankTransfer());

                    // responseModel.model.transferMethod =
                    //     TransferMethod.BankDeposit.index;
                    // navigateBankTransfer();
                    //   break;
                    // case 2:
                    // responseModel.model.transferMethod =
                    //     TransferMethod.OtherWallet.index;
                    // openPage(
                    //     context,
                    //     (ctx) => MobileAccountform(
                    //           responseModel: responseModel.model,
                    //         ));
                    //   break;
                    // case 3:
                    // responseModel.model.transferMethod =
                    //     TransferMethod.CashPickUp.index;
                    navigateCashpickup();
                    //openPage(context, (ctx) => CashPickupForm());
                    //   break;
                    // case 4:
                    //   break;
                    // default:
                  }),
                ],
              ),
            ),
    );
  }

  void navigateBankTransfer() {
    // int bankFormType = BankFormType.Normal.index;

    // if (recevingCurrency == "EUR") {
    //   bankFormType = BankFormType.IBAN.index;
    // }

    // if (recevingCurrency == "ZAR") {
    //   bankFormType = BankFormType.ZAR.index;
    // }
    // switch (bankFormType) {
    //   case 0:
    //     openPage(
    //         context,
    //         (ctx) => BankTransfer(
    //               responsemodel: responseModel.model,
    //             ));
    //     break;
    //   case 1:
    //     openPage(
    //         context,
    //         (ctx) => IbanTransferPage(
    //               responseModel: responseModel.model,
    //             ));
    //     break;
    //   case 2:
    //     openPage(
    //         context,
    //         (ctx) => ZarBankTransferPage(
    //               responseModel: responseModel.model,
    //             ));
    //     break;
    //   default:
    // }
  }

  void navigateCashpickup() {
    // int cashPickupFormType = CashPickUpForm.Normal.index;

    // if (recevingCurrency == "MAD") {
    //   cashPickupFormType = CashPickUpForm.Morocco.index;
    // }
    // switch (cashPickupFormType) {
    //   case 0:
    //     openPage(
    //         context,
    //         (ctx) => CashPickupForm(
    //               responseModel: responseModel.model,
    //             ));
    //     break;
    //   case 1:
    //     openPage(
    //         context,
    //         (ctx) => CashPickUpMoroccoForm(
    //               responseModel: responseModel.model,
    //             ));
    //     break;

    //   default:
    // }
  }
}
