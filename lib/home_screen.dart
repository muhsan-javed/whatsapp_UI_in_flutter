import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
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
            actions:  [
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
            //Icon(Icons.more_horiz_outlined),
              SizedBox(
                width: 10,
              ),
              
              PopupMenuButton(
                icon: Icon(Icons.more_horiz_outlined),
                itemBuilder: (context,) => const [
                  PopupMenuItem(
                   value: '1',
                    child: Text('New Group'),
                  ),
                  PopupMenuItem(
                    value: '2',
                    child: Text('Steeings'),
                  )
                  ,PopupMenuItem(
                    value: '3',
                    child: Text('Logout'),
                  )
                ],
                  
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Text('Camera'),
              ListView.builder(
                itemCount: 35,
                itemBuilder: (context, index){
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/01/06/16/14/woman-590490_960_720.jpg'),
                    ),
                    title: Text('Muskan Baloch'),
                    subtitle: Text('Hi, Where is my cat?'),
                    trailing: Text('6:35 PM'),
                  );
                },
              ),
            ListView.builder(
              itemCount: 35,
              itemBuilder: (context, index){
                if(index == 0){
                  return  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('New Update'),
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.green, width: 3)
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/01/06/16/14/woman-590490_960_720.jpg'),
                          ),
                        ),
                        title: Text(index /1 == 1 ? 'Muhsan Ali' : 'Uzair khan'),
                        subtitle: Text('35 minutes '),
                      )
                    ],
                  );
                }else{
                  return  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 3)
                      ),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/01/06/16/14/woman-590490_960_720.jpg'),
                      ),
                    ),
                    title: Text(index /3 == 3 ? 'Muhsan Ali' : 'Uzair khan'),
                    subtitle: Text('35 minutes '),
                  );
                }


              },
            ),

              ListView.builder(
                itemCount: 35,
                itemBuilder: (context, index){
                  return  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/01/06/16/14/woman-590490_960_720.jpg'),
                    ),
                    title: Text('Muskan Baloch'),
                    subtitle: Text(index /3 == 0? 'you missed call': 'Call times is 12: 36'),
                    trailing: Icon(index /6 == 0?  Icons.phone : Icons.video_call),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
