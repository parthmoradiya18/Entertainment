import 'package:entertainment/Model.dart';
import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Provider_ extends ChangeNotifier {
  List<Modal> My_show = [
    Modal(
        image: "assets/image/prasar_bharati.jpg",
        name: "Prasar bharati",
        link: "https://prasarbharati.gov.in/"),
    Modal(
        image: "assets/image/newsnation.png",
        name: "News Nation",
        link: "https://www.newsnationtv.com/"),
    Modal(
        image: "assets/image/indianews.jpg",
        name: "India News",
        link: "https://gujarat.indianews.in/"),
    Modal(
        image: "assets/image/star_movies_select_hd.jpg",
        name: "Star Movies",
        link: "https://www.jiotv.com/live-channel/star-movies-select-hd/1110"),
    Modal(
        image: "assets/image/discovery.png",
        name: "Discovery",
        link: "https://www.discovery.com/"),
  ];

  WebViewController? webViewController;
  int temp2 = 0;

  void initController() {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${My_show[temp2].link}"));
  }

  void changeindex(int index) {
    temp2 = index;
  }

  int temp1 = 0;

  void selectIndex(int value) {
    temp1 = value;
    notifyListeners();
  }

  static Provider_? of(BuildContext context, {required bool listen}) {}
}
