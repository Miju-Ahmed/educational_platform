import 'package:educational_platform/constrants.dart';
import 'package:educational_platform/screen/datasheet_screen/data/datasheet_data.dart';
import 'package:flutter/material.dart';

class DataSheetScreen extends StatelessWidget {
  const DataSheetScreen({Key? key}) : super(key: key);
  static const String routeName = 'DataSheetScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataSheet'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kOtherColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kDefaultPadding),
            topRight: Radius.circular(kDefaultPadding),
          ),
        ),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: datasheet.length,
          itemBuilder: (context, int index) {
            return Container(
              margin: EdgeInsets.only(
                left: kDefaultPadding / 2,
                right: kDefaultPadding / 2,
              ),
              padding: EdgeInsets.all(kDefaultPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: kDefaultPadding,
                    child: Divider(
                      thickness: 1.0,
                    ),
                  ),
                  //firsr need a row then 3 columns
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //first column
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            datasheet[index].date.toString(),
                            style: TextStyle(
                              color: kTextBlackColor,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            datasheet[index].monthName,
                            style: TextStyle(
                              color: kTextBlackColor,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),

                      //second one
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            datasheet[index].subjectName,
                            style: TextStyle(
                              color: kTextBlackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            datasheet[index].dayName,
                            style: TextStyle(
                              color: kTextBlackColor,
                              fontWeight: FontWeight.w300,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),

                      //third one
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${datasheet[index].time}',
                            style: TextStyle(
                              color: kTextLightColor,
                              fontWeight: FontWeight.w300,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                    child: Divider(
                      thickness: 1.0,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
