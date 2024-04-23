import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './posts_event.dart';
import './posts_state.dart';
import './post_model.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(PostsInitial()) {
    on<FetchPosts>((event, emit) async {
      emit(PostsLoading());
      try {
        final response = await http
            .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
        if (response.statusCode == 200) {
          List<dynamic> data = jsonDecode(response.body);
          List<Post> posts = data.map((item) => Post.fromJson(item)).toList();
          emit(PostsLoaded(posts));
        } else {
          emit(PostsError('Failed to fetch posts'));
        }
      } catch (e) {
        emit(PostsError('Error: $e'));
      }
    });
  }
}
