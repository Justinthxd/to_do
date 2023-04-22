import 'package:flutter/material.dart';
import 'package:to_do/data/models/note.dart';

class MyNote extends StatefulWidget {
  MyNote({super.key, required this.note});
  Note note;

  @override
  State<MyNote> createState() => _MyNoteState();
}

class _MyNoteState extends State<MyNote> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 230,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(35, 35, 35, 1),
        borderRadius: BorderRadius.circular(7),
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            color: Colors.black26,
            offset: Offset.zero,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.note.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.white70,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.more_vert_rounded,
                  color: Colors.white54,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.white.withOpacity(0.025),
          ),
          Text(
            widget.note.description,
            overflow: TextOverflow.fade,
            maxLines: 5,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white54,
            ),
          ),
          Divider(
            color: Colors.white.withOpacity(0.025),
          ),
          Row(
            children: [
              Checkbox(
                value: isActive,
                onChanged: (value) {
                  isActive = value!;
                  setState(() {});
                },
              ),
              Text(
                widget.note.task,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white54,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${widget.note.date.day}/${widget.note.date.month}/${widget.note.date.year}",
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.white12,
                ),
              ),
              Text(
                widget.note.user,
                overflow: TextOverflow.fade,
                maxLines: 5,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.white12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
