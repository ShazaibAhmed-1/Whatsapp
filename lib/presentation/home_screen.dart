// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Whatsapp',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(

                child: Icon(Icons.camera_alt_rounded),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.camera_alt_rounded),
            const SizedBox(
              width: 15,
            ),
            const Icon(Icons.search),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (
                context,
              ) =>
                  [
                const PopupMenuItem(
                  value: '1',
                  child: Text('New Group'),
                ),
                const PopupMenuItem(
                  value: '2',
                  child: Text('New broadcast'),
                ),
                const PopupMenuItem(
                  value: '3',
                  child: Text('Linked Devices'),
                ),
                const PopupMenuItem(
                  value: '4',
                  child: Text('Starred messages'),
                ),
                const PopupMenuItem(
                  value: '5',
                  child: Text('Setting'),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            const Icon(Icons.camera_alt_rounded),
            ListView.builder(
              itemCount: 100,
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text('Shazaib Ahmed'),
                    subtitle: Text('✔✔ How Are You?'),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://i.pinimg.com/236x/67/a4/fc/67a4fc4c84d471165b8d997656c255b8.jpg'),
                    ),
                    trailing: Text('12:40 PM'),
                  );
                },),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                    title: const Text('Shazaib Ahmed'),
                    subtitle: const Text('12:45 PM'),
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 3.5,
                            color: Colors.green,
                          )
                      ),
                   child: const CircleAvatar(
                      backgroundImage: NetworkImage('https://i.pinimg.com/236x/67/a4/fc/67a4fc4c84d471165b8d997656c255b8.jpg'),
                    ),
                  ),
                );
              },),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  title: const Text('Shazaib Ahmed'),
                  subtitle: Text(index/2 == 0 ? 'Your missed audio call' : 'You missed call before 20 minutes'),
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage('https://i.pinimg.com/236x/67/a4/fc/67a4fc4c84d471165b8d997656c255b8.jpg'),
                  ),
                  trailing: Icon(index/2 == 0 ? Icons.phone_callback_outlined : Icons.video_call),
                );
              },),
          ],
        ),
      ),
    );
  }
}
