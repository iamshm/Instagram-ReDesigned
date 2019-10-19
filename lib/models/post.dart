class Post {
  String authorName;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;
  String likes;
  String comments;

  Post({
    this.authorName,
    this.authorImageUrl,
    this.timeAgo,
    this.imageUrl,
    this.comments,
    this.likes,
  });
}

final List<Post> posts = [
  Post(
    authorName: 'Sam Martin',
    authorImageUrl: 'assets/images/user0.png',
    timeAgo: '5 min',
    imageUrl: 'assets/images/post0.jpg',
    likes: '2,567',
    comments: '230',
  ),
  Post(
    authorName: 'Kendal Gary',
    authorImageUrl: 'assets/images/user3.png',
    timeAgo: '10 min',
    imageUrl: 'assets/images/post1.jpg',
    likes: '25,997',
    comments: '5,443',
  ),
  Post(
    authorName: 'Alex Mason',
    authorImageUrl: 'assets/images/user1.png',
    timeAgo: '25 min',
    imageUrl: 'assets/images/post2.jpg',
    likes: '1,567',
    comments: '159',
  ),
  Post(
    authorName: 'Olena Vincett',
    authorImageUrl: 'assets/images/user2.png',
    timeAgo: '25 min',
    imageUrl: 'assets/images/post3.jpg',
    likes: '12,567',
    comments: '43',
  ),
];

final List<String> stories = [
  'assets/images/user1.png',
  'assets/images/user2.png',
  'assets/images/user3.png',
  'assets/images/user4.png',
  'assets/images/user0.png',
  'assets/images/user1.png',
  'assets/images/user2.png',
  'assets/images/user3.png',
];
