import 'package:flutter/material.dart';
import 'edit_profile_page.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({super.key});

  final String userName = 'AVINASH';
  final String email = 'avinash2596360@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(title: const Text('Profile'),
      backgroundColor:Colors.purple.shade100),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            leading: CircleAvatar(child: Text(userName[0])),
            title: Text(userName),
            subtitle: Text(email),
          ),
          const Divider(),
          _buildSettingItem(
            context,
            Icons.edit,
            'Edit Profile',
            const EditProfilePage(),
          ),
          _buildSettingItem(context, Icons.payment, 'Payment Option'),
          _buildSettingItem(context, Icons.notifications, 'Notifications'),
          _buildSettingItem(context, Icons.security, 'Security'),
          _buildSettingItem(context, Icons.language, 'Language'),
          _buildSettingItem(context, Icons.dark_mode, 'Dark Mode'),
          _buildSettingItem(context, Icons.description, 'Terms & Conditions'),
          _buildSettingItem(context, Icons.help, 'Help Center'),
          _buildSettingItem(context, Icons.group_add, 'Invite Friends'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'MY COURSES'),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'INBOX'),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'TRANSACTION',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'PROFILE'),
        ],
      ),
    );
  }

  Widget _buildSettingItem(
    BuildContext context,
    IconData icon,
    String title, [
    Widget? page,
  ]) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap:
          page != null
              ? () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => page),
              )
              : null,
    );
  }
}
