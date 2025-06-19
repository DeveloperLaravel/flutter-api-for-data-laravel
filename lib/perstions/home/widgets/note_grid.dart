import 'package:flutter/material.dart';

class NoteGrid extends StatelessWidget {
  const NoteGrid({super.key, required this.notes});
  final List<String> notes;
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        return NoteGridItem();
      }, childCount: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.8,
      ),
    );
  }
}

// ignore: must_be_immutable
class NoteGridItem extends StatelessWidget {
  NoteGridItem({super.key});
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        color: isDarkTheme ? Colors.red : Colors.teal,
        elevation: 3.0,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'title',
                      maxLines: 3,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Text('content'),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.calendar_today, size: 12.0),
                  const SizedBox(width: 12.0),
                  const SizedBox(width: 10.0),
                  Text(
                    'wed 8/24/2022',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
