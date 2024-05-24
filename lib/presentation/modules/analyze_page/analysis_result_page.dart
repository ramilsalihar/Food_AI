import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ai/domain/dummy_models.dart';
import 'package:food_ai/presentation/core/widgets/layout/app_scaffold.dart';
import 'package:food_ai/presentation/core/widgets/layout/custom_app_bar.dart';

@RoutePage()
class AnalysisResultPage extends StatelessWidget {
  const AnalysisResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final data = DummyModels();
    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: kToolbarHeight + 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Image.asset(
                      'assets/vectors/milk.png',
                      fit: BoxFit.cover,
                      height: 500,
                    ),
                  ),
                  Flexible(
                    flex: 0,
                    fit: FlexFit.tight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: SizedBox(
                        width: 140,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'UHT Milk Full Cream',
                              style: textTheme.displayLarge!.copyWith(
                                fontSize: 28,
                                height: 1.5,
                              ),
                              maxLines: 2,
                            ),
                            _buildDetails(
                              context: context,
                              title: '⚡️ Calories: ',
                              quantity: '150',
                              color: Colors.blue.shade50,
                            ),
                            _buildDetails(
                              context: context,
                              title: '🥩 Protein: ',
                              quantity: '8g',
                              color: Colors.red.shade50,
                            ),
                            _buildDetails(
                              context: context,
                              title: '🏃 Fat: ',
                              quantity: '8g',
                              color: Colors.green.shade50,
                            ),
                            _buildDetails(
                              context: context,
                              title: '🍚  Carbs: ',
                              quantity: '12g',
                              color: Colors.blue.shade50,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              _buildParagraph(
                context: context,
                text: data.results.description,
                color: Colors.black,
              ),
              _buildParagraph(
                context: context,
                text: data.results.pros,
                color: Colors.black,
              ),
              _buildParagraph(
                context: context,
                text: data.results.cons,
                color: Colors.red,
              ),
              _buildParagraph(
                context: context,
                text: data.results.conclusion,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomAppBar(
        title: 'Analysis Result',
        leadingIcon: SvgPicture.asset(
          'assets/icons/arrow_back.svg',
          fit: BoxFit.cover,
        ),
        onLeadingIconPressed: () => context.router.pop(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}

_buildDetails({
  required BuildContext context,
  required String title,
  required String quantity,
  required Color color,
}) {
  final textTheme = Theme.of(context).textTheme;
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          color: color),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
              text: title,
              style: textTheme.headlineSmall,
            ),
            TextSpan(
              text: quantity,
              style: textTheme.headlineSmall!.copyWith(
                color: Colors.black,
              ),
            )
          ]),
        ),
      ),
    ),
  );
}

_buildParagraph({
  required BuildContext context,
  required String text,
  Color? color,
}) {
  final textTheme = Theme.of(context).textTheme;
  return Padding(
    padding: const EdgeInsets.only(
      top: 20,
      left: 20,
      right: 20,
    ),
    child: Text(
        text,
        textAlign: TextAlign.justify,
        style: textTheme.headlineMedium!.copyWith(
          color: color,
        ),
      ),
  );
}
