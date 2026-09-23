import 'package:flutter/material.dart';
import '../models/chat_model.dart';
import '../models/user_model.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal();
  factory ApiService() => _instance;
  ApiService._internal();

  UserModel? currentUser;

  // Real Dashboard Client & Manager Credentials
  Future<UserModel> authenticate(String emailOrPhone, String password) async {
    await Future.delayed(const Duration(milliseconds: 400));
    final u = emailOrPhone.trim().toLowerCase();
    final p = password.trim();

    // 1. Temp Commerce (Manager & Owner)
    if (u == 'tempcom' || u == '0722882344') {
      if (p == 'ClientPass#2026' || p == '123456') {
        return currentUser = UserModel(
          id: 'client_tempcom',
          name: 'Commerce Temp (Manager)',
          email: 'tempcom@lumi.ai',
          phone: '0722882344',
          role: 'manager',
          companyName: 'Temp Commerce',
          companyId: 'client_tempcom',
          services: ['meta_api', 'smart_hr'],
          token: 'token_tempcom_2026',
        );
      }
    }

    // 2. Apex Logistics - Operations Lead Manager (Naveen)
    if (u == 'naveen_ops' || u == 'naveen@apex.lk' || u == '+94772233445') {
      if (p == 'NavOps@2026' || p == '123456') {
        return currentUser = UserModel(
          id: 'mgr_apex_1',
          name: 'Naveen Fernando (Operations Lead)',
          email: 'naveen@apex.lk',
          phone: '+94772233445',
          role: 'manager',
          companyName: 'Apex Logistics LK',
          companyId: 'client_apex',
          services: ['meta_api'],
          token: 'token_naveen_2026',
        );
      }
    }

    // 3. Apex Logistics - Customer Support Lead Manager (Tharushi)
    if (u == 'tharushi_cs' || u == 'tharushi@apex.lk' || u == '+94719988776') {
      if (p == 'Support@2026' || p == '123456') {
        return currentUser = UserModel(
          id: 'mgr_apex_2',
          name: 'Tharushi Perera (Support Lead)',
          email: 'tharushi@apex.lk',
          phone: '+94719988776',
          role: 'manager',
          companyName: 'Apex Logistics LK',
          companyId: 'client_apex',
          services: ['meta_api'],
          token: 'token_tharushi_2026',
        );
      }
    }

    // 4. Apex Logistics LK (Owner / Admin)
    if (u == 'apex_admin' || u == '+94771234567') {
      if (p == 'ApexSecure@2026' || p == '123456') {
        return currentUser = UserModel(
          id: 'client_apex',
          name: 'Kasun Perera (Apex Admin)',
          email: 'admin@apex.lk',
          phone: '+94771234567',
          role: 'manager',
          companyName: 'Apex Logistics LK',
          companyId: 'client_apex',
          services: ['meta_api'],
          token: 'token_apex_2026',
        );
      }
    }

    // 5. IMA Tech (Manager & Owner)
    if (u == 'imatech') {
      if (p == 'ClientPass#2026' || p == '123456') {
        return currentUser = UserModel(
          id: 'client_imatech',
          name: 'Tech Lead (Manager)',
          email: 'tech@imatech.lk',
          phone: '0722882344',
          role: 'manager',
          companyName: 'IMA Tech',
          companyId: 'client_imatech',
          services: ['meta_api', 'smart_hr'],
          token: 'token_imatech_2026',
        );
      }
    }

    // 6. Master Administrator Chamindu
    if (u == '0714941559' || u == 'chamindu' || u == 'dchamindu826@gmail.com') {
      if (p == '@#Chamindu1000' || p == '123456') {
        return currentUser = UserModel(
          id: 'admin_chamindu',
          name: 'Chamindu (Master Admin)',
          email: 'dchamindu826@gmail.com',
          phone: '0714941559',
          role: 'manager',
          companyName: 'LUMI System Core',
          companyId: 'client_system',
          services: ['meta_api', 'smart_hr'],
          token: 'token_chamindu_master',
        );
      }
    }

    // 7. Generic Fallback for Demo / Custom logins
    final isStaff = u.contains('staff');
    currentUser = UserModel(
      id: isStaff ? 'usr_staff_01' : 'usr_mngr_01',
      name: isStaff ? 'Staff Member' : 'Manager ($u)',
      email: u.contains('@') ? u : '$u@business.lk',
      phone: u.contains('@') ? '+94 77 123 4567' : u,
      role: isStaff ? 'staff' : 'manager',
      companyName: 'LUMI AI Business',
      companyId: 'client_custom',
      services: ['meta_api', 'smart_hr'],
      token: 'mock_jwt_token_2026_xyz',
    );
    return currentUser!;
  }

  // Business Number details
  Map<String, dynamic> getBusinessNumberDetails() {
    return {
      'number': '+94 77 123 4567',
      'status': 'Connected',
      'quality': 'High',
      'msgLimit': '1K / day',
      'callingEnabled': true,
    };
  }

  // Overview metrics
  Map<String, dynamic> getManagerOverviewStats() {
    return {
      'openChats': 12,
      'unassigned': 1,
      'missedCalls': 2,
      'avgFirstReply': '4m',
    };
  }

  // Needs Attention items
  List<NeedsAttentionItem> getNeedsAttention() {
    return [
      NeedsAttentionItem(
        id: 'na_1',
        title: 'Mohamed Rizwan is unassigned',
        subtitle: 'Waiting 12 min · tap to assign',
        icon: Icons.person_add_alt_1_outlined,
        iconBg: const Color(0xFFFFE4E6),
        iconColor: const Color(0xFFE11D48),
      ),
      NeedsAttentionItem(
        id: 'na_2',
        title: '2 missed calls not returned',
        subtitle: 'Oldest: yesterday 19:20',
        icon: Icons.call_missed_outlined,
        iconBg: const Color(0xFFFFE4E6),
        iconColor: const Color(0xFFE11D48),
      ),
      NeedsAttentionItem(
        id: 'na_3',
        title: 'Template "festive_offer" rejected',
        subtitle: 'Edit and resubmit to Meta',
        icon: Icons.description_outlined,
        iconBg: const Color(0xFFFEF3C7),
        iconColor: const Color(0xFFD97706),
      ),
    ];
  }

  // Active staff list
  List<StaffStatus> getStaffNow() {
    return [
      StaffStatus(
        id: 'st_1',
        initials: 'NB',
        name: 'Nimal Bandara',
        status: 'On call',
        statusColor: const Color(0xFFEF4444),
        avatarBg: const Color(0xFFDBEAFE),
      ),
      StaffStatus(
        id: 'st_2',
        initials: 'SW',
        name: 'Sachini Weerasinghe',
        status: 'Free',
        statusColor: const Color(0xFF22C55E),
        avatarBg: const Color(0xFFFCE7F3),
      ),
      StaffStatus(
        id: 'st_3',
        initials: 'RK',
        name: 'Roshan Kumara',
        status: 'Away',
        statusColor: const Color(0xFFF59E0B),
        avatarBg: const Color(0xFFE0E7FF),
      ),
    ];
  }

  // Chat conversations
  List<ChatConversation> getConversations() {
    return [
      ChatConversation(
        id: 'chat_1',
        contactName: 'Kasun Perera',
        phoneNumber: '+94 77 234 5678',
        avatarInitials: 'KP',
        avatarBg: const Color(0xFFFDE68A),
        lastMessage: 'ඔඩර් එක කවද්ද එන්නේ?',
        timestamp: '10:42',
        unreadCount: 2,
        labels: ['New order'],
        assignee: 'Nimal',
        customerSince: 'Mar 2026',
      ),
      ChatConversation(
        id: 'chat_2',
        contactName: 'Mohamed Rizwan',
        phoneNumber: '+94 71 882 1928',
        avatarInitials: 'MR',
        avatarBg: const Color(0xFFE9D5FF),
        lastMessage: 'Call eka miss una, call back karanna',
        timestamp: '10:01',
        unreadCount: 1,
        labels: ['Unassigned'],
        assignee: null,
      ),
      ChatConversation(
        id: 'chat_3',
        contactName: 'Dilani Fernando',
        phoneNumber: '+94 76 543 9012',
        avatarInitials: 'DF',
        avatarBg: const Color(0xFFBAE6FD),
        lastMessage: 'Voice message · 0:24',
        timestamp: '10:15',
        unreadCount: 0,
        isAudio: true,
        audioDuration: '0:24',
        labels: ['Follow-up'],
        assignee: 'Sachini',
      ),
      ChatConversation(
        id: 'chat_4',
        contactName: 'Tharindu Silva',
        phoneNumber: '+94 78 123 4455',
        avatarInitials: 'TS',
        avatarBg: const Color(0xFFE2E8F0),
        lastMessage: 'Order from catalog · 2 items',
        timestamp: '9:30',
        unreadCount: 0,
        isOrder: true,
        labels: ['Paid'],
        assignee: 'Sachini',
      ),
      ChatConversation(
        id: 'chat_5',
        contactName: 'Anjali Rao',
        phoneNumber: '+94 72 908 1122',
        avatarInitials: 'AR',
        avatarBg: const Color(0xFFFBCFE8),
        lastMessage: 'Saturday 4pm booking confirmed',
        timestamp: 'Yesterday',
        unreadCount: 0,
        isBooking: true,
        labels: ['Booking'],
        assignee: 'Nimal',
      ),
      ChatConversation(
        id: 'chat_6',
        contactName: 'Chamara Jayasuriya',
        phoneNumber: '+94 77 345 6789',
        avatarInitials: 'CJ',
        avatarBg: const Color(0xFFCBD5E1),
        lastMessage: 'හරි, ස්තූතියි!',
        timestamp: 'Sun',
        unreadCount: 0,
        labels: [],
      ),
    ];
  }

  // Call Records
  List<CallRecord> getCallRecords() {
    return [
      CallRecord(
        id: 'call_1',
        contactName: 'Kasun Perera',
        phoneNumber: '+94 77 234 5678',
        type: 'Outgoing',
        duration: '4:32',
        timestamp: 'Today 10:50',
        assignee: 'Nimal',
        recorded: true,
      ),
      CallRecord(
        id: 'call_2',
        contactName: 'Kasun Perera',
        phoneNumber: '+94 77 234 5678',
        type: 'Missed',
        duration: '0:00',
        timestamp: '12 Aug 18:40',
        assignee: null,
      ),
      CallRecord(
        id: 'call_3',
        contactName: 'Mohamed Rizwan',
        phoneNumber: '+94 71 882 1928',
        type: 'Missed',
        duration: '0:00',
        timestamp: 'Yesterday 19:20',
        assignee: null,
      ),
    ];
  }
}
