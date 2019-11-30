import 'package:flutter/material.dart';
import 'package:flutter_tabcontroller_demo/LoginPage.dart';
import 'package:flutter_tabcontroller_demo/AccountPage.dart';

class TabbedPage extends StatefulWidget {
  const TabbedPage({Key key}) : super(key: key);

  @override
  _TabbedPageState createState() => _TabbedPageState();
}

class _TabbedPageState extends State<TabbedPage> with SingleTickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    Tab(text: 'ログイン'),
    Tab(text: '会員登録',)
  ];

  final List<Widget> contents = <Widget>[
    LoginPage(),
    AccountPage(),
  ];


  TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('アプリ名'),
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
          children: contents,
      ),
    );
  }
}