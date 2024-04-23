import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'post_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PostProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Posts App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<PostProvider>(context, listen: false).fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    final postProvider = Provider.of<PostProvider>(context);

    if (postProvider.isLoading) {
      return Center(child: Text('Loading...'));
    }

    return Scaffold(body: ListView.builder(
      itemCount: postProvider.posts.length,
      itemBuilder: (context, index) {
        final post = postProvider.posts[index];
        return ListTile(
          title: Text(post.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
          subtitle: Text(post.body),
        );
      },
    ));
  }
}
