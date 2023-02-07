part of 'audio_player_bloc.dart';

abstract class AudioPlayerEvent {}

class PlayCurrentMusicEvent extends AudioPlayerEvent{
  int index;
  PlayCurrentMusicEvent({required this.index});
}

class StopCurrentMusicEvent extends AudioPlayerEvent{}

class PauseCurrentMusicEvent extends AudioPlayerEvent{
  int index;
  PauseCurrentMusicEvent({required this.index});
}

class ResumeCurrentMusicEvent extends AudioPlayerEvent{
  int index;
  ResumeCurrentMusicEvent({required this.index});
}

// ignore: must_be_immutable
class ChangeCurrentSecondEvent extends AudioPlayerEvent{
  int second;
  ChangeCurrentSecondEvent({required this.second});
}



class SkipMusicEvent extends AudioPlayerEvent{
  int index;
  SkipMusicEvent({required this.index});
}

class IndicatorEvent extends AudioPlayerEvent{
  int currentSecond;
  IndicatorEvent({required this.currentSecond});
}

class InitMusicEvent extends AudioPlayerEvent{
  int index;

  InitMusicEvent({required this.index});

}