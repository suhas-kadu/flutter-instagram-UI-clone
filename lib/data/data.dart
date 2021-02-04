import 'package:instagram_ui_clone/model/models.dart';

List<UserStory> getStories() {
  List<UserStory> userStories = new List();
  UserStory userStory = new UserStory();

  userStory.userName = "kadusuhas";
  userStory.imgUrl =
      "https://avatars2.githubusercontent.com/u/60438083?s=460&u=8b777d70ae095c37b2efc63a5977fbe7f314f053&v=4";
  userStories.add(userStory);

  userStory = new UserStory();
  userStory.userName = "user2001";
  userStory.imgUrl =
      "https://images.unsplash.com/photo-1611901041222-db4b69b798f2?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDI2fHRvd0paRnNrcEdnfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  userStories.add(userStory);

  userStory = new UserStory();
  userStory.userName = "user2002";
  userStory.imgUrl =
      "https://images.unsplash.com/photo-1612148349363-f91304ecd7d7?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDIyfHRvd0paRnNrcEdnfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  userStories.add(userStory);

  userStory = new UserStory();
  userStory.userName = "user2003";
  userStory.imgUrl =
      "https://images.unsplash.com/photo-1565841533903-781b91926dd1?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDU3fHRvd0paRnNrcEdnfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  userStories.add(userStory);

  userStory = new UserStory();
  userStory.userName = "user2004";
  userStory.imgUrl =
      "https://images.unsplash.com/photo-1611756674996-fc1b1ed07c9b?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDY5fHRvd0paRnNrcEdnfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  userStories.add(userStory);

  userStory = new UserStory();
  userStory.userName = "user2005";
  userStory.imgUrl =
      "https://images.unsplash.com/photo-1610303785445-41db41838e3e?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDEwfDZzTVZqVExTa2VRfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  userStories.add(userStory);

  userStory = new UserStory();
  userStory.userName = "user2006";
  userStory.imgUrl =
      "https://images.unsplash.com/photo-1598349929619-d994011482ad?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDh8NnNNVmpUTFNrZVF8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  userStories.add(userStory);

  userStory = new UserStory();
  userStory.userName = "user2007";
  userStory.imgUrl =
      "https://images.unsplash.com/photo-1612082452372-cad8932cdc31?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDE5fDZzTVZqVExTa2VRfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  userStories.add(userStory);

  userStory = new UserStory();
  userStory.userName = "user2008";
  userStory.imgUrl =
      "https://images.unsplash.com/photo-1611771914212-b2d778710da5?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDI0fDZzTVZqVExTa2VRfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  userStories.add(userStory);

  userStory = new UserStory();
  userStory.userName = "user2009";
  userStory.imgUrl =
      "https://images.unsplash.com/photo-1611826243916-78ea7c8ab6b0?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDE1fGJvOGpRS1RhRTBZfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  userStories.add(userStory);

  return userStories;
}

List<UserPost> getPosts() {
  List<UserPost> userPosts = new List();
  UserPost userPost = new UserPost();

  userPost.userName = "kadusuhas100";
  userPost.userAvatarImg =
      "https://avatars2.githubusercontent.com/u/60438083?s=460&u=8b777d70ae095c37b2efc63a5977fbe7f314f053&v=4";
  userPost.userSubtitle = "Pune, Maharashtra";
  userPost.imgUrl =
      "https://avatars2.githubusercontent.com/u/60438083?s=460&u=8b777d70ae095c37b2efc63a5977fbe7f314f053&v=4";
  userPost.description =
      "Liked by suhask26 and others\nkadusuhas100 No need of caption!...more";
  userPost.comments = "View all comments\n30 minutes ago";
  userPosts.add(userPost);

  userPost = new UserPost();
  userPost.userName = "user2010";
  userPost.userAvatarImg =
      "https://images.unsplash.com/photo-1611756674996-fc1b1ed07c9b?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDY5fHRvd0paRnNrcEdnfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  userPost.userSubtitle = "California";
  userPost.imgUrl =
      "https://images.unsplash.com/photo-1501834694136-5c1e87f85fa7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGNvdXBsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  userPost.description =
      "Liked by suhask26 and others\nuser2010 We are together";
  userPost.comments = "View all comments\n50 minutes ago";
  userPosts.add(userPost);

  userPost = new UserPost();
  userPost.userName = "user2011";
  userPost.userAvatarImg =
      "https://images.unsplash.com/photo-1461749280684-dccba630e2f6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8Y29kaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  userPost.userSubtitle = "Newyork";
  userPost.imgUrl =
      "https://images.unsplash.com/photo-1575089976121-8ed7b2a54265?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8Y29kaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  userPost.description =
      "Liked by user2009 and others\nuser2012 Too much work!!!";
  userPost.comments = "View all comments\n55 minutes ago";
  userPosts.add(userPost);

  return userPosts;
}
