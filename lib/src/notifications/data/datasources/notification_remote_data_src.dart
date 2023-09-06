
import 'package:education_app/src/notifications/data/models/notification_model.dart';
import 'package:education_app/src/notifications/domain/entities/notification.dart';

abstract class NotificationRemoteDataSrc {
  const NotificationRemoteDataSrc();

  Future<void> markAsRead(String notificationId);

  Future<void> clearAll();

  Future<void> clear(String notificationId);

  Future<void> sendNotification(Notification notification);

  Stream<List<NotificationModel>> getNotifications();
}
