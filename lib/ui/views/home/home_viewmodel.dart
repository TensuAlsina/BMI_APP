import 'dart:developer';

import 'package:bmi_app/app/app.locator.dart';
import 'package:bmi_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  bool _ismaleSelected = true;
  bool _isfemaleSelected = false;
  int _wightCount = 56;
  int _hightCount = 162;
  int _ageCount = 28;
  int get ageCount => _ageCount;
  int get hightCount => _hightCount;
  String? _selectedWeight = "Kg";
  String? _selctedHeight = "cm";
  String? get selectedHeight => _selctedHeight;
  String? get selectedWeight => _selectedWeight;
  int get count => _wightCount;
  bool get isMaleSelcted => _ismaleSelected;
  bool get isFemaleSelcted => _isfemaleSelected;
  void maleSelected() {
    _ismaleSelected = true;
    _isfemaleSelected = false;
    notifyListeners();
  }

  void femaleSelected() {
    _isfemaleSelected = true;
    _ismaleSelected = false;
    notifyListeners();
  }

  void increaseWight() {
    _wightCount++;
    notifyListeners();
  }

  void decreaseWight() {
    _wightCount--;
    notifyListeners();
  }

  void updateSelectedWeightValue(String? value) {
    _selectedWeight = value;
    notifyListeners();
  }

  void increaseHight() {
    _hightCount++;
    notifyListeners();
  }

  void decreaseHight() {
    _hightCount--;
    notifyListeners();
  }

  void updateSelectedHeightValue(String? value) {
    _selctedHeight = value;
    notifyListeners();
  }

  void increaseAge() {
    _ageCount++;
    notifyListeners();
  }

  void decreaseAge() {
    _ageCount--;
    notifyListeners();
  }

  void navigateToResultView() {
    _navigationService.navigateToResultView(calculatedBmi: calculateUserBMI());
    // calculateUserBMI();
  }

  String calculateUserBMI() {
    double userBMI = _wightCount / ((_hightCount * _hightCount) / 10000);
    return userBMI.toStringAsFixed(2);
  }
}
