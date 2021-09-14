import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import 'package:nexuswellness/assets/constants.dart';
import 'package:nexuswellness/widgets/mainwidgets.dart';

class PremiumPlanPayment extends StatefulWidget {
  const PremiumPlanPayment({Key? key}) : super(key: key);

  @override
  _PremiumPlanPaymentState createState() => _PremiumPlanPaymentState();
}

class _PremiumPlanPaymentState extends State<PremiumPlanPayment> {
  String price = "200.00";
  String currency = "USD";
  TextEditingController cardTextController = new TextEditingController();
  TextEditingController dateTextController = new TextEditingController();
  TextEditingController cvvTextController = new TextEditingController();
  TextEditingController cardHolderTextController = new TextEditingController();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(kblueColor),
        title: Center(
            child: Text(" Premium Membership",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800))),
        elevation: 0,
      ),
      body: new Stack(children: <Widget>[
        planBgScreen("premiumplanbg.png"),
        Column(
          children: [
            SizedBox(height: 20),
            Text("Total Price",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w500)),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("\$" + price.toString(),
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w800)),
            ),
            SizedBox(height: 10),
            Text("Payment Method",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w400)),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {},
                child: Container(
                  width: 100,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Credit", style: TextStyle(fontSize: 14)),
                      ),
                      Icon(Icons.check_circle)
                    ],
                  ),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            ),
                            side: BorderSide(color: Color(kblueColor))))))
          ],
        ),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.5),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )),
            child: ListView(
              children: [
                SizedBox(
                  height: 5,
                ),
                CreditCardForm(
                  formKey: formKey,
                  obscureCvv: true,
                  obscureNumber: true,
                  cardNumber: cardNumber,
                  cvvCode: cvvCode,
                  cardHolderName: cardHolderName,
                  expiryDate: expiryDate,
                  themeColor: Colors.blue,
                  cardNumberDecoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Number',
                    hintText: 'XXXX XXXX XXXX XXXX',
                  ),
                  expiryDateDecoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Expired Date',
                    hintText: 'XX/XX',
                  ),
                  cvvCodeDecoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'CVV',
                    hintText: 'XXX',
                  ),
                  cardHolderDecoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Card Holder',
                  ),
                  onCreditCardModelChange: onCreditCardModelChange,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    primary: const Color(kblueColor),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: const Text(
                      'Proceed To Pay',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'halter',
                        fontSize: 16,
                        package: 'flutter_credit_card',
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print('valid!');
                    } else {
                      print('invalid!');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
