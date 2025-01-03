import 'package:flutter/material.dart';

class Notifications {
  final DateTime date;
  final String message;
  final IconData icon;

  Notifications({
    required this.date,
    required this.message,
    required this.icon,
  });
}

final List<Notifications> notifications = [
  Notifications(
    date: DateTime(2024, 7, 20, 10, 30),
    message:
    "Alert: A gas leakage has been detected in your vicinity. Please ensure all safety measures are followed.",
    icon: Icons.warning,
  ),
  Notifications(
    date: DateTime(2024, 7, 20, 14, 15),
    message:
    "Urgent: Gas leak detected in the kitchen area. Please evacuate immediately and contact emergency services.",
    icon: Icons.local_fire_department,
  ),
  Notifications(
    date: DateTime(2024, 7, 21, 9, 0),
    message:
    "Check your gas sensors: The detection system has reported irregularities. Ensure your equipment is working properly.",
    icon: Icons.sensors,
  ),
  Notifications(
    date: DateTime(2024, 7, 22, 16, 45),
    message:
    "Reminder: Perform a routine check of your gas detection system. Regular maintenance ensures reliability.",
    icon: Icons.settings,
  ),
  Notifications(
    date: DateTime(2024, 7, 23, 12, 0),
    message:
    "Security Alert: Gas leakage detected in your area. Please follow evacuation protocols and stay away from the affected area.",
    icon: Icons.security,
  ),
  Notifications(
    date: DateTime(2024, 7, 24, 11, 0),
    message:
    "Based on sensor readings, it is recommended to double-check your gas systems for any leakage risk.",
    icon: Icons.device_thermostat,
  ),
  Notifications(
    date: DateTime(2024, 7, 20, 10, 30),
    message:
    "Alert: A gas leakage has been detected in your vicinity. Please ensure all safety measures are followed.",
    icon: Icons.warning,
  ),
  Notifications(
    date: DateTime(2024, 7, 20, 14, 15),
    message:
    "Urgent: Gas leak detected in the kitchen area. Please evacuate immediately and contact emergency services.",
    icon: Icons.local_fire_department,
  ),
  Notifications(
    date: DateTime(2024, 7, 21, 9, 0),
    message:
    "Check your gas sensors: The detection system has reported irregularities. Ensure your equipment is working properly.",
    icon: Icons.sensors,
  ),
  Notifications(
    date: DateTime(2024, 7, 22, 16, 45),
    message:
    "Reminder: Perform a routine check of your gas detection system. Regular maintenance ensures reliability.",
    icon: Icons.settings,
  ),
  Notifications(
    date: DateTime(2024, 7, 23, 12, 0),
    message:
    "Security Alert: Gas leakage detected in your area. Please follow evacuation protocols and stay away from the affected area.",
    icon: Icons.security,
  ),
  Notifications(
    date: DateTime(2024, 7, 24, 11, 0),
    message:
    "Based on sensor readings, it is recommended to double-check your gas systems for any leakage risk.",
    icon: Icons.device_thermostat,
  ),
];
