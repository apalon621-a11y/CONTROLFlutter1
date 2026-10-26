import 'package:flutter/material.dart';

import 'about_tab.dart';
import 'contacts_tab.dart';
import 'skills_tab.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileApp(),
    );
  }
}

class ProfileApp extends StatefulWidget {
  const ProfileApp({super.key});

  @override
  State<ProfileApp> createState() => _ProfileAppState();
}

class _ProfileAppState extends State<ProfileApp>
    with SingleTickerProviderStateMixin {
  late TabController _tab;

  @override
  void initState() {
    super.initState();
    _tab = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tab.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Моя визитка'),
        bottom: TabBar(
          controller: _tab,
          tabs: const [
            Tab(text: 'Обо мне'),
            Tab(text: 'Навыки'),
            Tab(text: 'Контакты'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tab,
        children: const [
          AboutTab(),
          SkillsTab(),
          ContactsTab(),
        ],
      ),
    );
  }
}