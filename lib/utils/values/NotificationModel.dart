class NotificationModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;

  NotificationModel({this.avatarUrl, this.name, this.datetime, this.message});

  static final List<NotificationModel> dummyData = [
    NotificationModel(
        avatarUrl: "https://randomuser.me/api/portraits/women/34.jpg",
        name: "laurent",
        datetime: "20:18",
        message: "Have you got any problems with Yofiz?"),
    NotificationModel(
        avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
        name: "tracy",
        datetime: "18:18",
        message:
            "Check out the updated Yofiz, and pleasse give feedback incase of any issues you face."),
    NotificationModel(
        avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
        name: "Carol",
        datetime: "08:18",
        message: "Have you got any problems with Yofiz?"),
    NotificationModel(
        avatarUrl: "https://randomuser.me/api/portraits/women/50.jpg",
        name: "Esther",
        datetime: "06:18",
        message: "Have you got any problems with Yofiz?"),
    NotificationModel(
        avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
        name: "tracy",
        datetime: "18:18",
        message:
            "Check out the updated Yofiz, and pleasse give feedback incase of any issues you face."),
    NotificationModel(
        avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
        name: "Carol",
        datetime: "08:18",
        message: "Have you got any problems with Yofiz?"),
    NotificationModel(
        avatarUrl: "https://randomuser.me/api/portraits/women/50.jpg",
        name: "Esther",
        datetime: "06:18",
        message: "Have you got any problems with Yofiz?"),
    NotificationModel(
        avatarUrl: "https://randomuser.me/api/portraits/women/50.jpg",
        name: "Esther",
        datetime: "06:18",
        message: "Have you got any problems with Yofiz?"),
  ];
}
