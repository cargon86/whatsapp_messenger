import 'package:flutter/material.dart';

class PantallaHogar extends StatefulWidget {
  const PantallaHogar({super.key});

  @override
  State<PantallaHogar> createState() => _PantallaHogarState();
}

class _PantallaHogarState extends State<PantallaHogar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.supervised_user_circle)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {}, child: const Text('All')),
              TextButton(onPressed: () {}, child: const Text('Unread')),
              TextButton(onPressed: () {}, child: const Text('Personal')),
              TextButton(onPressed: () {}, child: const Text('Business')),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 12,
              itemBuilder: (context, index) => ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/user.png'),
                ),
                title: Text('Nombre del usuario $index'),
                subtitle: Row(
                  children: [
                    Text('Mensaje del usuario $index'),
                    const Spacer(),
                    const Text('12:00 PM'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green.shade400,
        foregroundColor: Colors.white,
        child: const Icon(Icons.chat),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stream_outlined),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
