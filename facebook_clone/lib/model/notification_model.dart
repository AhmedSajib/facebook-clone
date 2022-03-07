class NotificationModel {
  final String name;
  final String avatar;
  final String time;
  final String description;

  NotificationModel({
    required this.name,
    required this.avatar,
    required this.time,
    required this.description,
  });
}

List<NotificationModel> notificationData = [
  NotificationModel(
      name: 'Alexa',
      avatar: 'images/user/u1.jpg',
      time: '2 min ago',
      description: " like's your Profile Picture"),
  NotificationModel(
      name: 'Corbin',
      avatar: 'images/user/u2.jpg',
      time: '10 min ago',
      description: " react your story"),
  NotificationModel(
      name: 'Baron',
      avatar: 'images/user/u3.jpg',
      time: '20 min ago',
      description: " sent friend request"),
  NotificationModel(
      name: 'Feen Alean',
      avatar: 'images/user/u4.jpg',
      time: '23 min ago',
      description: "like's your Profile Picture"),
  NotificationModel(
      name: 'Charloty',
      avatar: 'images/user/u5.jpg',
      time: '30 min ago',
      description: " comment your Profile Picture"),
  NotificationModel(
      name: 'Rousey',
      avatar: 'images/user/u6.jpg',
      time: '2 min ago',
      description: " update her bacground image"),
  NotificationModel(
      name: 'Hendrix',
      avatar: 'images/user/u7.jpg',
      time: '2 min ago',
      description: " comment your post"),
  NotificationModel(
      name: 'Blings',
      avatar: 'images/user/u8.jpg',
      time: '2 min ago',
      description: " sent friend request"),
];
