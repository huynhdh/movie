import 'package:flutter/foundation.dart';
import 'package:movie/data/handler/app_error.dart';

class ErrorHandler extends ChangeNotifier {
  AppError? _appError;

  get appError => _appError;

  void setError(AppError appError) {
    _appError = appError;
    notifyListeners();
  }

  void resetError() {
    _appError = null;
  }
}
