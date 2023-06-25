import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/cupertino.dart';

class CustomErrorMsg extends StatelessWidget {
  final String errMsg;

  const CustomErrorMsg({Key? key, required this.errMsg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMsg,
        style: Styles.textStyle18
      ),
    );
  }
}
