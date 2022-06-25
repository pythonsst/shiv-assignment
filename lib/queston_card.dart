import 'package:assignment/entity/HaveQuestion.dart';
import 'package:assignment/shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HaveQuestonCard extends StatelessWidget {
  const HaveQuestonCard({
    Key? key,
    required this.listHaveQuestion,
    required this.isZeroIndex,
  }) : super(key: key);

  final HaveQuestion listHaveQuestion;
  final bool isZeroIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 46,
          height: 46,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              backgroundBlendMode: BlendMode.srcOver,
              color: isZeroIndex
                  ? Color.fromRGBO(51, 102, 255, 1)
                  : Color.fromRGBO(238, 243, 255, 1),
              border: Border.all(
                  color: const Color.fromRGBO(235, 239, 245, 1),
                  width: 1.5,
                  style: BorderStyle.solid),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(191, 202, 217, 0.9),
                  offset: Offset(4, 4),
                  blurRadius: 8,
                  blurStyle: BlurStyle.inner,
                ),
                BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    offset: Offset(-4, -4),
                    blurRadius: 8,
                    blurStyle: BlurStyle.inner),
              ]),
          child: SizedBox(
            height: 24,
            width: 24,
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: SvgPicture.asset(
                listHaveQuestion.imagePath,
                color: isZeroIndex
                    ? Color.fromRGBO(238, 243, 255, 1)
                    : Color.fromRGBO(51, 0, 153, 1),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: ShadowText(
            color: Color.fromRGBO(0, 0, 0, 1),
            letterSpacing: 1,
            size: 12,
            shadowTextName: listHaveQuestion.text,
          ),
        ),
      ],
    );
  }
}
