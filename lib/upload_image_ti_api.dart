

import 'dart:io';
import 'package:dio/dio.dart';

Future uploadImage(File image)async{ 
return await MultipartFile.fromFile(image.path,filename: image.path.split('/').last);  
}            