import 'package:bmi_app/ui/views/home/home_view.dart';
import 'package:bmi_app/ui/views/result/result_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    CupertinoRoute(page: ResultView)
  ],
  dependencies: [LazySingleton(classType: NavigationService)],
  logger: StackedLogger(),
)
class $App {}
