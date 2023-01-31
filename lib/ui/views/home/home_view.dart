import 'package:bmi_app/ui/contants/images.dart';
import 'package:bmi_app/ui/contants/strings.dart';
import 'package:bmi_app/ui/ui_helpers/app_colors.dart';
import 'package:bmi_app/ui/ui_helpers/shared_styles.dart';
import 'package:bmi_app/ui/ui_helpers/ui_helpers.dart';
import 'package:bmi_app/ui/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/dumb_widgets/custom_button_widget.dart';
import '../../widgets/dumb_widgets/gender_selction_container.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  // List<DropdownMenuItem<dynamic>>? items = [
  //   DropdownMenuItem(child: Text("Kg")),
  // ];
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (
        BuildContext context,
        HomeViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            bottomOpacity: 0,
            leading: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  ImagePath.menuSvgImagePath,
                  color: kcWhite,
                  width: 25,
                )),
            actions: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  ImagePath.alertSvgImagePath,
                  width: 25,
                  color: kcWhite,
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  UiStrings.bmiCalculator,
                  style: ktsWhiteLargeTextStyle,
                ),
                verticalSpaceSmall,
                const Text(
                  UiStrings.genderString,
                  style: ktsgrayMidumTextStyle,
                ),
                verticalSpaceTiny,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GenderSelctionContainer(
                      imagePath: ImagePath.maleSvgImagePath,
                      genderName: UiStrings.genderMaleString,
                      ontap: model.maleSelected,
                      isSelcted: model.isMaleSelcted,
                    ),
                    GenderSelctionContainer(
                      imagePath: ImagePath.maleSvgImagePath,
                      genderName: UiStrings.genderFemaleString,
                      ontap: model.femaleSelected,
                      isSelcted: model.isFemaleSelcted,
                    ),
                  ],
                ),
                verticalSpaceTiny,
                const Text(
                  UiStrings.weightString,
                  style: ktsgrayMidumTextStyle,
                ),
                verticalSpaceTiny,
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 225,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: model.increaseWight,
                            icon: const Icon(Icons.add),
                            color: Colors.black,
                          ),
                          Text(
                            model.count.toString(),
                            style: ktsBlackMidumTextStyle,
                          ),
                          IconButton(
                            onPressed: model.decreaseWight,
                            icon: const Icon(Icons.minimize),
                            padding: const EdgeInsets.only(
                              bottom: 13,
                            ),
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    horizontalSpaceTiny,
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            model.selectedWeight!,
                            style: TextStyle(color: Colors.black),
                          ),
                          DropdownButton<String>(
                            value: model.selectedWeight,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            items: ["Kg", "lbs"]
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: model.updateSelectedWeightValue,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                verticalSpaceTiny,
                const Text(
                  UiStrings.heightString,
                  style: ktsgrayMidumTextStyle,
                ),
                verticalSpaceTiny,
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 225,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: model.increaseHight,
                            icon: const Icon(Icons.add),
                            color: Colors.black,
                          ),
                          Text(
                            model.hightCount.toString(),
                            style: ktsBlackMidumTextStyle,
                          ),
                          IconButton(
                            onPressed: model.decreaseHight,
                            icon: const Icon(Icons.minimize),
                            padding: const EdgeInsets.only(
                              bottom: 13,
                            ),
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    horizontalSpaceTiny,
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            model.selectedHeight!,
                            style: const TextStyle(color: Colors.black),
                          ),
                          DropdownButton<String>(
                            value: model.selectedHeight,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            items: ["cm", "in"]
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: model.updateSelectedHeightValue,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                verticalSpaceTiny,
                const Text(
                  UiStrings.ageString,
                  style: ktsgrayMidumTextStyle,
                ),
                verticalSpaceTiny,
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: model.increaseAge,
                        icon: const Icon(Icons.add),
                        color: Colors.black,
                      ),
                      Text(
                        model.ageCount.toString(),
                        style: ktsBlackMidumTextStyle,
                      ),
                      IconButton(
                        onPressed: model.decreaseAge,
                        icon: const Icon(Icons.minimize),
                        padding: const EdgeInsets.only(
                          bottom: 13,
                        ),
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                verticalSpaceLarge,
                CustomButton(
                  middleText: UiStrings.calclulateString,
                  onTap: model.navigateToResultView,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
