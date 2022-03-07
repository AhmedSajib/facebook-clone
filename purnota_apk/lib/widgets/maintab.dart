import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:purnota_apk/pages/friend_page.dart';
import 'package:purnota_apk/pages/home_page.dart';
import 'package:purnota_apk/pages/market_place_page.dart';
import 'package:purnota_apk/pages/message_page.dart';
import 'package:purnota_apk/pages/notification_page.dart';
import 'package:purnota_apk/pages/video_page.dart';
import 'package:purnota_apk/widgets/home/my_drawer.dart';

class MainTab extends StatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> topTabs = <Tab>[
    const Tab(
      icon: Icon(Icons.home_outlined),
    ),
    const Tab(
      icon: Icon(Icons.people_outlined),
    ),
    const Tab(
      icon: Icon(Icons.message_outlined),
    ),
    Tab(
      icon: Badge(
        position: BadgePosition.topEnd(top: -20, end: -5),
        badgeContent: const Text(
          "9+",
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        child: const Icon(Icons.notifications_outlined),
      ),
    ),
    const Tab(
      icon: Icon(Icons.video_library_outlined),
    ),
    const Tab(
      icon: Icon(Icons.shopping_bag_outlined),
    ),
  ];
  @override
  void initState() {
    _tabController =
        TabController(length: topTabs.length, initialIndex: 0, vsync: this)
          ..addListener(() {
            setState(() {});
          });
    ;
    super.initState();
  }

//  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey();
  final _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldkey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "PURNOTA",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          elevation: 1,
          actions: [
            Container(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              margin: const EdgeInsets.only(right: 12),
              child: IconButton(
                onPressed: () => {_scaffoldkey.currentState!.openEndDrawer()},
                icon: const Icon(Icons.menu),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.black,
            tabs: topTabs,
            labelColor: Colors.black,
          ),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 0.95,
          child: MyDrawer(),
        ),
        body: TabBarView(controller: _tabController, children: const [
          HomePage(),
          FriendsPage(),
          MessagePage(),
          NotificationPage(),
          VideoPage(),
          MarketPage(),
        ]));
  }
}
