import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  final String networkUrl_1 =
      "https://scontent.facc5-1.fna.fbcdn.net/v/t1.0-9/94419618_245018940202134_5700274930189336576_n.jpg?_nc_cat=105&_nc_sid=110474&_nc_eui2=AeGDJEEXpbtK5RkJZjbEsZZCh4xkwNT3hbSHjGTA1PeFtEiB79vZLxjBazhFpfrd4z83FAUMI5NN065bEwOU97ua&_nc_ohc=ajplN0vVUbcAX-hXQOP&_nc_ht=scontent.facc5-1.fna&oh=6cbb8ba25e6a6d8eb18f7a4282a4f2da&oe=5F3DEDF8";
  final String networkUrl_2 =
      "https://scontent.facc5-1.fna.fbcdn.net/v/t1.0-9/94770783_248251173212244_1584152288597901312_n.jpg?_nc_cat=102&_nc_sid=110474&_nc_eui2=AeG93s7mmmSITa1DEVLDifbjky5UvNdNIM6TLlS8100gzoq6pxQudeJsAcggGE1wgtvZ2nhbw7QwtljnaA04hWIX&_nc_ohc=S55wzzdrKGEAX9kslkq&_nc_ht=scontent.facc5-1.fna&oh=dfbdf09b81c2542cb4d8c84799db3778&oe=5F3EDDBA";
  final String text_1 = '''Holy Spirit Empower Me for the Task Ahead''';
  final String text_2 =
      '''Kindly visit the annoucement page to view the annoucement for today!''';
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text(text_1,
          Colors.primaries[math.Random().nextInt(Colors.primaries.length)],
          fontSize: 40),
      StoryItem.text(text_2,
          Colors.primaries[math.Random().nextInt(Colors.primaries.length)],
          fontSize: 40),
      StoryItem.pageImage(NetworkImage(networkUrl_1)),
      StoryItem.pageImage(NetworkImage(networkUrl_2))
    ];
    return Material(
      child: StoryView(
        storyItems,
        controller: controller,
        inline: false,
        // repeat: false,
        onComplete: () => Navigator.of(context).pop(),
      ),
    );
  }
}
