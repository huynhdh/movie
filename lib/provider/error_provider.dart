import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie/data/handler/error_handler.dart';

final errorProvider = ChangeNotifierProvider((ref) => ErrorHandler());
