import 'package:entertainment/HomeScreen.dart';
import 'package:entertainment/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Second_screen extends StatefulWidget {
  const Second_screen({Key? key}) : super(key: key);

  @override
  State<Second_screen> createState() => _Second_screenState();
}

class _Second_screenState extends State<Second_screen> {
  Provider_? False;
  Provider_? True;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<Provider_>(context, listen: false).initController();
  }

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;

    False = Provider.of<Provider_>(context, listen: false);
    True = Provider.of<Provider_>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "${True!.My_show[index].name}",
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          elevation: 0,
          leading: InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            },));
          },
            child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(3),
                alignment: Alignment.center,
                child: Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 30,
                )),
          ),
        ),
        body: WebViewWidget(controller: True!.webViewController!),
      ),
    );
  }
}
