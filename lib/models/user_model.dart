class UserModel {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String role; // 'manager' or 'staff'
  final String companyName;
  final String companyId;
  final List<String> services; // ['meta_api', 'smart_hr']
  final String token;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.role,
    required this.companyName,
    required this.companyId,
    required this.services,
    required this.token,
  });

  bool get isManager => role.toLowerCase() == 'manager';
  bool get hasMetaApi => services.contains('meta_api');
  bool get hasSmartHr => services.contains('smart_hr');

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      role: json['role'] ?? 'manager',
      companyName: json['companyName'] ?? 'LUMI AI Business',
      companyId: json['companyId'] ?? '',
      services: List<String>.from(json['services'] ?? ['meta_api']),
      token: json['token'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'phone': phone,
        'role': role,
        'companyName': companyName,
        'companyId': companyId,
        'services': services,
        'token': token,
      };
}
