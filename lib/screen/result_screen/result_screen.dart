
import 'package:educational_platform/constrants.dart';
import 'package:educational_platform/screen/result_screen/components/result_component.dart';
import 'package:educational_platform/screen/result_screen/data/result_data.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);
  static String routeName = 'ResultScreen';

  @override
  Widget build(BuildContext context) {
    int oMarks = result.map((e) => e.obtainedMarks).sum.toInt();
    int tMarks = result.map((e) => e.totalMarks).sum.toInt();
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            margin: EdgeInsets.all(5),
            child: CustomPaint(
              foregroundPainter: CircularPainter(
                backgroundColor: kPrimaryColor,
                lineColor: kOtherColor,
                width: 15.0, //could be error 5.w
              ),
              child: Center(
                //sum the total marks and obtained marks //collection library fo sum 
                child: Text(
                  oMarks.toString() + '\n / \n' + tMarks.toString(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ),
          Text(
            'You are excellent',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w900,
                ),
          ),
          Text(
            'Miju!!',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          sizedBox,
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding / 1.5),
                  topRight: Radius.circular(kDefaultPadding / 1.5),
                ),
                color: kOtherColor,
              ),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(kDefaultPadding),
                itemCount: result.length,
                itemBuilder: (context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: kDefaultPadding),
                    padding: EdgeInsets.all(kDefaultPadding / 2),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(kDefaultPadding),
                      boxShadow: [
                        BoxShadow(
                          color: kTextLightColor,
                          blurRadius: 2.0,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              result[index].subjectName,
                              textAlign: TextAlign.start,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: kTextWhiteColor,
                                  ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${result[index].obtainedMarks}/${result[index].totalMarks}',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      width:
                                          result[index].totalMarks.toDouble(),
                                      height: 13,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[700],
                                        borderRadius: BorderRadius.only(
                                          topLeft:
                                              Radius.circular(kDefaultPadding),
                                          bottomRight:
                                              Radius.circular(kDefaultPadding),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 13,
                                      width: result[index]
                                          .obtainedMarks
                                          .toDouble(),
                                      decoration: BoxDecoration(
                                        color: result[index].grade == 'D'
                                            ? kErrorBorderColor
                                            : kOtherColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft:
                                              Radius.circular(kDefaultPadding),
                                          bottomRight:
                                              Radius.circular(kDefaultPadding),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  result[index].grade,
                                  textAlign: TextAlign.start,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.w900,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
