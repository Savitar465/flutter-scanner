import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';

final selectedImageProvider = StateProvider<File?>((ref) => null);
