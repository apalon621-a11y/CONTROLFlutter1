import 'package:flutter/material.dart';

class Skill {
  Skill(this.name);

  final String name;
  bool highlighted = false;
}

class SkillsTab extends StatefulWidget {
  const SkillsTab({super.key});

  @override
  State<SkillsTab> createState() => _SkillsTabState();
}

class _SkillsTabState extends State<SkillsTab>
    with AutomaticKeepAliveClientMixin {
  final List<Skill> _skills = [
    Skill('Спать 26 часов в день'),
    Skill('Есть 10000 калорий в день'),
    Skill('Играть в Brawl Stars'),
    Skill('Храпеть по ночам'),
    Skill('Спасать Готэм'),
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 88),
        itemCount: _skills.length,
        itemBuilder: (context, i) {
          final skill = _skills[i];
          return InkWell(
            onTap: () => setState(() => skill.highlighted = !skill.highlighted),
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: skill.highlighted
                    ? Colors.indigo.shade100
                    : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.star),
                  const SizedBox(width: 12),
                  Text(skill.name),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => setState(() => _skills.removeAt(i)),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('добавляю навык');
          setState(
            () => _skills.add(Skill('Новый навык ${_skills.length + 1}')),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}