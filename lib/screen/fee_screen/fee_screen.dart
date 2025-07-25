import 'package:educational_platform/constrants.dart';
import 'package:educational_platform/screen/fee_screen/data/fee_data.dart';
import 'package:educational_platform/screen/fee_screen/widgets/fee_widgets.dart';
import 'package:flutter/material.dart';

class FeeScreen extends StatelessWidget {
  const FeeScreen({Key? key}) : super(key: key);
  static String routeName = 'FeeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fee'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding),
                  topRight: Radius.circular(kDefaultPadding),
                ),
                color: kOtherColor,
              ),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(
                  kDefaultPadding,
                ),
                itemCount: fee.length,
                itemBuilder: (context, int index) {
                  return Container(
                    margin: EdgeInsets.only(
                      bottom: kDefaultPadding,
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(kDefaultPadding),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(kDefaultPadding),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: kTextLightColor,
                                blurRadius: 2.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              FeeDetailRow(
                                title: 'Receipt No',
                                statusValue: fee[index].reciptNo,
                              ),
                              SizedBox(
                                height: kDefaultPadding,
                                child: Divider(
                                  thickness: 1.0,
                                ),
                              ),
                              FeeDetailRow(
                                title: 'Month',
                                statusValue: fee[index].month,
                              ),
                              sizedBox,
                              FeeDetailRow(
                                title: 'Payment Date',
                                statusValue: fee[index].date,
                              ),
                              sizedBox,
                              FeeDetailRow(
                                title: 'Status',
                                statusValue: fee[index].paymentStatus,
                              ),
                              sizedBox,
                              SizedBox(
                                height: kDefaultPadding,
                                child: Divider(
                                  thickness: 1.0,
                                ),
                              ),
                              FeeDetailRow(
                                title: 'Total Amount',
                                statusValue: fee[index].totalAmount,
                              ),
                            ],
                          ),
                        ),
                        FeeButton(
                          title: fee[index].btnStatus,
                          iconData: fee[index].btnStatus == 'Paid'
                              ? Icons.download_outlined
                              : Icons.arrow_forward_outlined,
                          onPress: () {},
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


