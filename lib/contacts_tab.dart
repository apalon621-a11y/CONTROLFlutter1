import 'package:flutter/material.dart';

const _textStyle = TextStyle(color: Colors.white, fontSize: 18);

class ContactsTab extends StatelessWidget {
  const ContactsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(color: Colors.indigo),
        Positioned(
          top: 40,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                color: Colors.white,
                iconSize: 36,
                icon: const Icon(Icons.send),
                onPressed: () => print('открываю telegram'),
              ),
              IconButton(
                color: Colors.white,
                iconSize: 36,
                icon: const Icon(Icons.phone),
                onPressed: () => print('звоню по номеру'),
              ),
              IconButton(
                color: Colors.white,
                iconSize: 36,
                icon: const Icon(Icons.email),
                onPressed: () => print('открываю почту'),
              ),
            ],
          ),
        ),
        const Positioned(
          top: 120,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Text('Telegram: @batman_gotham', style: _textStyle),
              SizedBox(height: 12),
              Text('Телефон: +1 202 555 0100', style: _textStyle),
              SizedBox(height: 12),
              Text('Почта: superman@example.com', style: _textStyle),
            ],
          ),
        ),
      ],
    );
  }
}