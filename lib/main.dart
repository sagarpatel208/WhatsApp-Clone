import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/call_component.dart';
import 'package:whatsapp_clone/components/chat_component.dart';
import 'package:whatsapp_clone/components/status_component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color(0XFF25D366)),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  // 0 - Chats
  // 1 - Status
  // 2 - Calls

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text("WhatsApp"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child: Container(
              height: 48.0,
              alignment: Alignment.center,
              child: Row(
                children: [
                  // Camera icon in appbar
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                  // Tabbar
                  Expanded(
                    child: TabBar(
                      indicatorColor: Colors.white,
                      labelColor: Colors.white,
                      // tabbar menus
                      tabs: const [
                        Tab(text: "CHATS"),
                        Tab(text: "STATUS"),
                        Tab(text: "CALLS"),
                      ],
                      onTap: (index) {
                        // change current tab bar index as tab click
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Tabbar view list
        body: const TabBarView(
          children: [
            ChatComponent(),
            StatusComponent(),
            CallComponent(),
          ],
        ),
        // show floating acion button icon as per selected tabbar menu
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Theme.of(context).primaryColor,
          child: currentIndex == 0
              ? const Icon(Icons.chat)
              : currentIndex == 1
                  ? const Icon(Icons.camera_alt)
                  : const Icon(Icons.add_ic_call),
        ),
      ),
    );
  }
}
