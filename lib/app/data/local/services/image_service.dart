import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class ImageService {
  final ImagePicker _picker = ImagePicker();

  Future<File?> pickImageFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    return _saveToLocal(pickedFile);
  }

  Future<File?> pickImageFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    return _saveToLocal(pickedFile);
  }

  Future<File?> _saveToLocal(XFile? pickedFile) async {
    if (pickedFile == null) return null;

    final appDir = await getApplicationDocumentsDirectory();
    final fileName = p.basename(pickedFile.path);
    final savedImage = await File(
      pickedFile.path,
    ).copy('${appDir.path}/$fileName');
    return savedImage;
  }
}

final imageServiceProvider = Provider((ref) => ImageService());
