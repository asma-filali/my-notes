import 'package:flutter/foundation.dart';

typedef CloseLoadingScreen = bool Function();
typedef UpdateDialog = bool Function(String text);

@immutable
class LoadingScreenController {
  final CloseLoadingScreen close;
  final UpdateDialog update;
  const LoadingScreenController({
    required this.close,
    required this.update,
  });
}
