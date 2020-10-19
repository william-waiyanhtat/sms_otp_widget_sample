import 'package:flutter/material.dart';
import 'package:sms_auto_fill_widget/sms_auto_fill_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyTestApp(),
    );
  }
}

class MyTestApp extends StatelessWidget {
  SmsAutoFillWidget smsWidget;

  Widget _getSmsWidget() {
    smsWidget = SmsAutoFillWidget();
    return smsWidget;
  }

  Future<void> getSignature() async {
    print(await smsWidget.getAppSignature());
  }

  @override
  Widget build(BuildContext context) {
    _getSmsWidget();

    //use to get App Signature and which need to be send in otp sms
    getSignature();
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Container(
        child: smsWidget,
      ),
    );
  }
}
