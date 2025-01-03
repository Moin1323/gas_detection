import 'package:flutter/material.dart';
import 'package:glossy/glossy.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'models/notification.dart';
import 'models/theme.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final String currentDate = DateFormat('EEEE, d MMMM').format(DateTime.now());


  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onTertiary.withOpacity(0.3),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => const Center(
                            child: FractionallySizedBox(
                              alignment: Alignment.topCenter,
                              widthFactor: 0.9,
                              heightFactor: 0.7,
                              child: NotificationContainer(),
                            ),
                          ),
                        );
                      },
                      icon: Icon(Icons.notification_add_outlined),
                    ),
                  ],
                ),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 10),
                        child: Text(
                          currentDate,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context)
                                .colorScheme
                                .surface
                                .withOpacity(0.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GlossyContainer(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      border: Border.all(
        color: Theme.of(context).colorScheme.onTertiary,
        width: 0.5,
      ),
      borderRadius: BorderRadius.circular(30),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: Material(
                color: Colors.transparent,
                child: NotificationList(notifications: notifications)),
          ),
        ],
      ),
    );
  }
}

class NotificationList extends StatelessWidget {
  final List<Notifications> notifications;

  const NotificationList({
    super.key,
    required this.notifications,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return ListTile(
            leading: Icon(
              notification.icon,
              color: Theme.of(context)
                  .colorScheme
                  .primary, // Customize the icon color if needed
            ),
            title: Text(
              notification.message,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onTertiary,
                fontSize: 14,
              ),
            ),
            subtitle: Text(
              DateFormat('yyyy-MM-dd – kk:mm').format(notification.date),
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
          );
        },
      ),
    );
  }
}
