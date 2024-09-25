import 'package:flutter/material.dart';
import 'package:heartsync/feature_chat/screen/chat.dart';

class MatchedProfile extends StatefulWidget {
  const MatchedProfile({super.key});

  @override
  State<MatchedProfile> createState() => _MatchedProfileState();
}

class _MatchedProfileState extends State<MatchedProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      //   border: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(10),
                      //   ),
                    ),
                  ),
                  height: 30,
                  width: MediaQuery.of(context).size.width * 0.85,
                  color: Colors.grey[100],
                )
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 21, left: 15, bottom: 21),
              child: Row(
                children: [
                  Text(
                    "Matches",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "(7)",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
                height: 100,
                // flex: 1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 70,
                      width: 100,
                      child: Stack(alignment: Alignment.center, children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('assets/Avatar.png'),
                            ),
                            Text('Name'),
                          ],
                        ),
                        Positioned(
                            bottom: 30,
                            right: 11,
                            child: CircleAvatar(
                              radius: 11,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.blue,
                              ),
                            )),
                      ]),
                    );
                  },
                )),
            SizedBox(
              height: 21,
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Container(
              // flex: 5,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 21, left: 15, bottom: 21, right: 15),
                    child: Row(
                      children: [
                        Text(
                          "Chats",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "(1)",
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(),
                        Icon(Icons.filter_list)
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatScreen()));
                    },
                    child: Container(
                      color: Colors.purple[50],
                      child: ListTile(
                        leading: Stack(alignment: Alignment.center, children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/Avatar.png'),
                          ),
                          Positioned(
                              bottom: 3,
                              right: 3,
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.blue,
                                ),
                              )),
                        ]),
                        title: Row(
                          children: [
                            Text(
                              'Ava Jones',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '1 hours ago',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            )
                          ],
                        ),
                        subtitle: Text('You: Hello!'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
