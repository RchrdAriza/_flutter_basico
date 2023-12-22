import "package:flutter/material.dart";

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatar Page"),
        actions: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx-4gCEb9P9P4xRZeITjMXFsvfEOs_ON8C6Q&usqp=CAU"),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("SL"),
            ),
          )
        ],
      ),
      body: const Center(
        child: FadeInImage(
          image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx-4gCEb9P9P4xRZeITjMXFsvfEOs_ON8C6Q&usqp=CAU"),
          placeholder: AssetImage("assets/jar-loading.gif"),
        ),
      ),
    );
  }
}
