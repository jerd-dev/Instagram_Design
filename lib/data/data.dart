import 'dart:math';

import 'package:instagram_clone/models/story_model.dart';
import 'package:username_gen/username_gen.dart';

Random random = Random();
// int randomNumber = random.nextInt(70); // from 0 to 69 included

final stories = [
  StoryModel("https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(70)}.jpg", UsernameGen().generate().split('-')[1], "https://random.imagecdn.app/1200/800"),
  StoryModel("https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(70)}.jpg", UsernameGen().generate().split('-')[1], "https://picsum.photos/1200/1200"),
  StoryModel("https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(70)}.jpg", UsernameGen().generate().split('-')[1], "https://picsum.photos/1200/800?2"),
  StoryModel("https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(70)}.jpg", UsernameGen().generate().split('-')[1], "https://picsum.photos/1200/800?3"),
  StoryModel("https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(70)}.jpg", UsernameGen().generate().split('-')[1], "https://picsum.photos/1200/800?4"),
  StoryModel("https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(70)}.jpg", UsernameGen().generate().split('-')[1], "https://picsum.photos/1200/800?5"),
  StoryModel("https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(70)}.jpg", UsernameGen().generate().split('-')[1], "https://picsum.photos/1200/800?6"),
  StoryModel("https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(70)}.jpg", UsernameGen().generate().split('-')[1], "https://picsum.photos/1200/800?7"),
  StoryModel("https://xsgames.co/randomusers/assets/avatars/male/${random.nextInt(70)}.jpg", UsernameGen().generate().split('-')[1], "https://picsum.photos/1200/800?8"),

];

