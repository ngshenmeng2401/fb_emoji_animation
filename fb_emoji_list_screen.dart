import 'package:flutter/material.dart';
import 'package:ui_animation_testing_project/widgets/fb_reaction_box_widget.dart';

class FBEmojiListScreen extends StatefulWidget {
  const FBEmojiListScreen({super.key});

  @override
  State<FBEmojiListScreen> createState() => _FBEmojiListScreenState();
}

class _FBEmojiListScreenState extends State<FBEmojiListScreen> {

  void _emojiValue(String emojiText){
    print('emoji: $emojiText');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Facebook Reaction',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: FbReactionBox(argument: FbReactionBoxArgument(onEmojiPressed: _emojiValue),),
    );
  }
}
