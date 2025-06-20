import 'package:educational_platform/constrants.dart';
import 'package:educational_platform/screen/assignment_screen/data/assignment_data.dart';
import 'package:educational_platform/screen/assignment_screen/widgets/assignment_widgets.dart';
import 'package:flutter/material.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({Key? key}) : super(key: key);
  static String routeName = 'AssignmentScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignments'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kOtherColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding),
                  topRight: Radius.circular(kDefaultPadding),
                ),
              ),
              child: ListView.builder(
                padding: EdgeInsets.all(kDefaultPadding),
                physics: BouncingScrollPhysics(),
                itemCount: assignment.length,
                itemBuilder: (context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: kDefaultPadding,),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(kDefaultPadding),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(kDefaultPadding),
                            color: kOtherColor,
                            boxShadow: [
                              BoxShadow(
                                color: kTextLightColor,
                                blurRadius: 2.0,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 120,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: kSeconderyColor.withOpacity(0.4),
                                  borderRadius:
                                      BorderRadius.circular(kDefaultPadding),
                                ),
                                child: Center(
                                  child: Text(
                                    assignment[index].subjectName,
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ),
                              ),
                              kHalfSizedBox,
                              Text(
                                assignment[index].topicName,
                                style: TextStyle(
                                  color: kTextBlackColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.0,
                                ),
                              ),
                              kHalfSizedBox,
                              AssignmentDetailRow(
                                title: 'Assign Date',
                                statusValue: assignment[index].assignDate,
                              ),
                              kHalfSizedBox,
                              AssignmentDetailRow(
                                title: 'Last Date',
                                statusValue: assignment[index].lastDate,
                              ),
                              kHalfSizedBox,
                              AssignmentDetailRow(
                                title: 'Status',
                                statusValue: assignment[index].status,
                              ),
                              kHalfSizedBox,
                              //use condition here to display button
                              if (assignment[index].status == 'Pending')
                                //then show button
                                AssignmentButton(
                                  title: 'To be Submitted',
                                  onPress: () {
                                    //submit here
                                  },
                                ),
                            ],
                          ),
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

