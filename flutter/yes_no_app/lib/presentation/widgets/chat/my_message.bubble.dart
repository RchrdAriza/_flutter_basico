import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  final Message message;
  const MyMessageBubble({super.key, required this.message});

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: AlignmentDirectional.centerEnd,
//       child: Container(
//         decoration: BoxDecoration(
//             color: const Color(0xff4D9EF6),
//             borderRadius: BorderRadius.circular(20)),
//         child: const Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//           child: Text(
//             "Lorem ipsum dolor sit amet",
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
            decoration: BoxDecoration(
                color: colors.primary, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                message.text,
                style: const TextStyle(color: Colors.white),
              ),
            )),
        const SizedBox(height: 5),
      ],
    );
  }
}
