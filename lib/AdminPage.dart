import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Post();
  }
}

class Post extends StatefulWidget {
  @override
  PostState createState() => new PostState();
}

class PostState extends State<Post> {
  var verified = List.generate(5, (index) => false);
  var userid = new List<String>.filled(5, 'asc');
  var loc = new List<String>.filled(5, 'kenya');
  int count = 0;

  _pressed(k) {
    setState(() {
      verified[k] = !verified[k];
      if (verified[k])
        count++;
      else
        count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6E6CB),
      appBar: AppBar(
        backgroundColor: Color(0xff6C4A4A),
        centerTitle: true,
        title: Text(
          'Admin',
        ),
      ),
      endDrawer: Drawer(),
      body: Center(
        child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Text(
                    '${userid[index]}',
                  ),
                  title: Text('${loc[index]}'),
                  subtitle: Text('picture'),
                  trailing: IconButton(
                    icon: Icon(
                      verified[index]
                          ? Icons.verified_user
                          : Icons.verified_user,
                      color: verified[index] ? Colors.green : Colors.grey,
                    ),
                    onPressed: () => _pressed(index),
                  ),
                ),
              );
            },
            itemCount: 5),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          List list = [];
          for (var i = 0; i < 5; i++) {
            if (verified[i]) list.add(userid[i]);
          }
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
