abstract class PostsEvent {}

class FetchPosts extends PostsEvent {}

class FetchPostsError extends PostsEvent {
  final String message;
  FetchPostsError(this.message);
}
