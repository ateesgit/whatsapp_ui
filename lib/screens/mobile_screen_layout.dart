import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/colors.dart';
import 'package:whatsapp_ui/widgets/contact_list.dart';
class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: Text('Whatsapp',style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
            fontWeight: FontWeight.bold
          ),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
             IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.grey,)),
          ],
          bottom: TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold
            ),
            tabs:[
              Tab(text:'Chats'),
              Tab(text: 'Status'),
              Tab(text:'Calls',),
            ] ),
        ),
        body: ContactList()
        // Center(child: Text('This is a mobile screen')),
      ),
    );
  }
}