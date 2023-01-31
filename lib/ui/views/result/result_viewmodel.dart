import 'package:bmi_app/app/app.locator.dart';
import 'package:bmi_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

enum AllStrings { underweight, overweight, healthyWeight }

class ResultViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  String _stringToShow = "";
  String get stringToShow => _stringToShow;

  void backToHomeView() {
    _navigationService.back();
  }

  void recalculateBmi() {
    _navigationService.clearStackAndShow(Routes.homeView);
  }

  setStringToShow(String calculatedBmi) {
    double bmi = double.parse(calculatedBmi);
    if (bmi < 18.5) {
      _stringToShow =
          "Your BMI is $bmi, indicating your weight is in the Under Weight category for adult of your height.";
      notifyListeners();
    } else if (bmi > 18.5 && bmi < 24.9) {
      _stringToShow =
          "Your BMI is $bmi, indicating your weight is in the Normal category for adult of your height.";
      notifyListeners();
    } else if (bmi >= 25.0 && bmi <= 29.9) {
      _stringToShow =
          "Your BMI is $bmi, indicating your weight is in the Over Weight category for adult of your height.";

      notifyListeners();
    } else if (bmi > 30) {
      _stringToShow =
          "Your BMI is $bmi, indicating your weight is in the Obese category for adult of your height.";
      notifyListeners();
    }
  }
}
