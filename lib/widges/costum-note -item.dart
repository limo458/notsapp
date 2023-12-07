import 'package:flutter/material.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, bottom: 25, left: 8),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'limo',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
              child: Text(
                'he want to trivel to anuther countr ',
                style: TextStyle(
                    color: Colors.black.withOpacity(.7), fontSize: 20),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 35,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              'may/12 2020',
              style:
                  TextStyle(color: Colors.black.withOpacity(.7), fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
