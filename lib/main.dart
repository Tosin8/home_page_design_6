import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MaterialApp(title: 'Home Design Design', home: MyCustomUi()));
}

class MyCustomUi extends StatefulWidget {
  const MyCustomUi({Key? key}) : super(key: key);

  @override
  State<MyCustomUi> createState() => _MyCustomUiState();
}

class _MyCustomUiState extends State<MyCustomUi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: const Color(0x0ff8f9fb),
          appBar: AppBar(
              systemOverlayStyle: SystemUiOverlayStyle.light,
              elevation: 20,
              shadowColor: const Color(0xffF0F0F0).withOpacity(.4),
              backgroundColor: Colors.white,
              title: Text('Your App\'s Nmae',
                  textScaleFactor: 1.12,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.7),
                    fontWeight: FontWeight.w700,
                  )),
              actions: [
                IconButton(
                  color: Colors.black.withOpacity(.7),
                  tooltip: 'Settings',
                  enableFeedback: true,
                  icon: Icon(CupertinoIcons.gear_alt_fill,
                      color: Colors.black.withOpacity(.7)),
                  onPressed: () {
                    HapticFeedback.lightImpact();
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
                  },
                ),
              ],
              bottom: TabBar(
                indicatorColor: Colors.black.withOpacity(.8),
                unselectedLabelStyle: TextStyle(
                  color: Colors.black.withOpacity(.5),
                ),
                unselectedLabelColor: Colors.black.withOpacity(.4),
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.black.withOpacity(.8),
                tabs: const [
                  Tab(
                    child: Text('Example'),
                  ),
                  Tab(
                    child: Text('Example'),
                  ),
                  Tab(
                    child: Text('Example'),
                  ),
                ],
              )),
          body: TabBarView(
            children: [
              mainCardWidget(context),
              mainCardWidget(context),
              mainCardWidget(context),
            ],
          )),
    );
  }
}

Widget mainCardWidget(BuildContext context) {
  return ListView(
    physics:
        const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
    children: [
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      SizedBox(
        height: MediaQuery.of(context).size.width / 7,
      ),
    ],
  );
}

Widget cardWithInfoPage(String image, String name, BuildContext context) {
  return cardWidget(
    context,
    infoPage(name, context),
    name,
    image,
  );
}

Widget cardWidget(
  BuildContext context,
  Widget route,
  String name,
  String image,
) {
  double w = MediaQuery.of(context).size.width;
  double f = MediaQuery.of(context).textScaleFactor;
  return InkWell(
      enableFeedback: true,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        HapticFeedback.lightImpact();
        return Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return route;
          },
        ));
      },
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(.04), blurRadius: 30),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.fromLTRB(w / 20, w / 20, w / 20, 0),
          height: w / 5,
          padding: EdgeInsets.all(w / 25),
          child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                SizedBox(
                  width: w / 2.0,
                  // color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: f * 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(.8),
                          )),
                      Text(
                        'Tap to know more',
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: f * 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(.6),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    // height: w/55,
                    width: w / 3.3,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 0),
                      color: Colors.black.withOpacity(.2),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 30),
                      ],
                      // image: DecorationImage( image: AssetImage(image), fit: BoxFit.cover),
                    ),
                    child: const Center(
                      child: Text(
                        'Add image here',
                      ),
                    )),
              ]))));
}

Widget infoPage(String name, BuildContext context) {
  double f = MediaQuery.of(context).textScaleFactor;
  return Scaffold(
    backgroundColor: const Color(0xffF8F9FB),
    appBar: AppBar(
      leading: IconButton(
        tooltip: 'Back',
        icon: Icon(
          CupertinoIcons.chevron_back,
          color: Colors.black.withOpacity(.7),
        ),
        onPressed: () {
          HapticFeedback.lightImpact();
          Navigator.maybePop(context);
        },
      ),
      shadowColor: const Color(0xffF0F0F0).withOpacity(.4),
      elevation: 20,
      backgroundColor: Colors.white,
      title: Text(
        name,
        style: TextStyle(
          color: Colors.black.withOpacity(.7),
          fontSize: f * 22,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        IconButton(
          color: Colors.black.withOpacity(.7),
          tooltip: 'Settings',
          enableFeedback: true,
          icon: const Icon(CupertinoIcons.gear_alt_fill),
          onPressed: () {
            HapticFeedback.lightImpact();
            //   Navigator.push(context, MaterialPageRoute(
            // builder: (context) => SettingsPage()));
          },
        ),
      ],
    ),
  );
}
