import 'package:flutter/material.dart';

class ChatConversation {
  final String id;
  final String contactName;
  final String phoneNumber;
  final String avatarInitials;
  final Color avatarBg;
  final String lastMessage;
  final String timestamp;
  final int unreadCount;
  final List<String> labels;
  final String? assignee;
  final bool isAudio;
  final String? audioDuration;
  final bool isOrder;
  final bool isBooking;
  final String customerSince;

  ChatConversation({
    required this.id,
    required this.contactName,
    required this.phoneNumber,
    required this.avatarInitials,
    required this.avatarBg,
    required this.lastMessage,
    required this.timestamp,
    this.unreadCount = 0,
    this.labels = const [],
    this.assignee,
    this.isAudio = false,
    this.audioDuration,
    this.isOrder = false,
    this.isBooking = false,
    this.customerSince = 'Mar 2026',
  });
}

class CallRecord {
  final String id;
  final String contactName;
  final String phoneNumber;
  final String type; // 'Outgoing', 'Missed', 'Incoming'
  final String duration;
  final String timestamp;
  final String? assignee;
  final bool recorded;

  CallRecord({
    required this.id,
    required this.contactName,
    required this.phoneNumber,
    required this.type,
    required this.duration,
    required this.timestamp,
    this.assignee,
    this.recorded = false,
  });
}

class StaffStatus {
  final String id;
  final String initials;
  final String name;
  final String status; // 'On call', 'Free', 'Away'
  final Color statusColor;
  final Color avatarBg;

  StaffStatus({
    required this.id,
    required this.initials,
    required this.name,
    required this.status,
    required this.statusColor,
    required this.avatarBg,
  });
}

class NeedsAttentionItem {
  final String id;
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconBg;
  final Color iconColor;

  NeedsAttentionItem({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconBg,
    required this.iconColor,
  });
}
