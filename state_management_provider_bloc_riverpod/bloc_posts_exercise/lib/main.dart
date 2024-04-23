import 'package:bloc_posts_exercise/posts_bloc.dart';
import 'package:bloc_posts_exercise/posts_event.dart';
import 'package:bloc_posts_exercise/posts_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostsPage(), 
    );
  }
}

class PostsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostsBloc()..add(FetchPosts()),
      child: Scaffold(
        appBar: AppBar(title: Text('Posts using bloc')),
        body: BlocBuilder<PostsBloc, PostsState>(
          builder: (context, state) {
            if (state is PostsInitial || state is PostsLoading) {
              return Center(child: Text('Loading...'));
            } else if (state is PostsLoaded) {
              return ListView.builder(
                itemCount: state.posts.length,
                itemBuilder: (context, index) {
                  final post = state.posts[index];
                  return ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.body),
                  );
                },
              );
            } else if (state is PostsError) {
              return Center(child: Text(state.message));
            }
            return Container(); 
          },
        ),
      ),
    );
  }
}
