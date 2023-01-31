import 'package:bmi_app/ui/contants/images.dart';
import 'package:bmi_app/ui/contants/strings.dart';
import 'package:bmi_app/ui/ui_helpers/app_colors.dart';
import 'package:bmi_app/ui/ui_helpers/shared_styles.dart';
import 'package:bmi_app/ui/ui_helpers/ui_helpers.dart';
import 'package:bmi_app/ui/views/result/result_viewmodel.dart';
import 'package:bmi_app/ui/widgets/dumb_widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

class ResultView extends StatelessWidget {
  final String calculatedBmi;
  const ResultView({Key? key, required this.calculatedBmi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ResultViewModel>.reactive(
      viewModelBuilder: () => ResultViewModel(),
      onViewModelReady: (viewModel) => viewModel.setStringToShow(calculatedBmi),
      builder: (
        BuildContext context,
        ResultViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            bottomOpacity: 0,
            leading: IconButton(
                onPressed: model.backToHomeView,
                icon: SvgPicture.asset(
                  ImagePath.backSvgImagePath,
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
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      UiStrings.resultString,
                      style: ktsWhiteLargeTextStyle,
                    ),
                  ),
                  verticalSpaceTiny,
                  Container(
                    height: 280,
                    decoration: kbdResultContainerDecoration,
                    child: Column(
                      children: [
                        verticalSpaceTiny,
                        const Text(
                          UiStrings.yourCurrentString,
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w500),
                        ),
                        verticalSpaceTiny,
                        Center(
                          child: Text(
                            calculatedBmi,
                            style: ktsWhiteLargeTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpaceTiny,
                  const Text(
                    UiStrings.forYourHeightString,
                    style: ktsWhiteMidumTextStyle,
                  ),
                  verticalSpaceTiny,
                  Text(
                    model.stringToShow,
                    style: ktsBlackSmallTextStyle,
                  ),
                  verticalSpaceTiny,
                  const Text(
                    UiStrings.maintainYour,
                    style: ktsBlackSmallTextStyle,
                  ),
                  verticalSpaceTiny,
                  verticalSpaceTiny,
                  CustomButton(
                    middleText: UiStrings.reCalclulateBmiString,
                    onTap: model.recalculateBmi,
                  )
                ],
              )),
        );
      },
    );
  }
}
