class VideoPlayerModel{
  bool isPlaying = false;
  bool isPaused = false;
  String path;
  String name;

  VideoPlayerModel({
    required this.name,
    required this.path,
  });
}