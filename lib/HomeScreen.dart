import 'package:entertainment/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    False = Provider.of<Provider_>(context, listen: false);
    True = Provider.of<Provider_>(context, listen: true);

    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.blueGrey.shade400,
            appBar: AppBar(
              title: Text(
                "Entertainment",
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
              backgroundColor: Colors.black,
              elevation: 0,
              centerTitle: true,
            ),
            body: Stack(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: True!.My_show.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'second',
                            arguments: index);
                        False!.changeindex(index);
                      },
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        '${True!.My_show[index].image}',
                                        height: 100,
                                        width: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${True!.My_show[index].name}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Tv Show",
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          Icon(
                            Icons.check_box,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
