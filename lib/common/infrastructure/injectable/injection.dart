import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

/// [getIt] is the GetIt instance
final GetIt getIt = GetIt.instance;

@InjectableInit()

/// [configureInjection] it the GetIt configuration
void configureInjection() {
  getIt.init();
}
