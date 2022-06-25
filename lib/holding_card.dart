import 'package:assignment/entity/Holding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HoldingCard extends StatelessWidget {
  const HoldingCard({
    Key? key,
    required this.holding,
  }) : super(key: key);

  final Holding holding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
      child: Container(
        decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.srcOver,
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromRGBO(238, 243, 255, 1),
            border: Border.all(
                color: const Color.fromRGBO(235, 239, 245, 1),
                width: 1.5,
                style: BorderStyle.solid),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(191, 202, 217, 0.9),
                offset: Offset(4, 4),
                blurRadius: 4,
                spreadRadius: 0,
                blurStyle: BlurStyle.normal,
              ),
              BoxShadow(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  offset: Offset(-4, -4),
                  blurRadius: 4,
                  spreadRadius: 0,
                  blurStyle: BlurStyle.normal),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(holding.color[0].toInt(),
                            holding.color[1].toInt(), holding.color[2], 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/svg/star.svg',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        holding.fundName,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          textStyle: const TextStyle(
                            color: Color.fromRGBO(117, 117, 117, 1),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '₹ ',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              textStyle: const TextStyle(
                                color: Color.fromRGBO(117, 117, 117, 1),
                              ),
                            ),
                          ),
                          Text(
                            '${holding.fundValue} Lac',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              letterSpacing: 0.15,
                              textStyle: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: holding.isProfit
                                ? SvgPicture.asset(
                                    'assets/svg/up.svg',
                                    color: const Color.fromRGBO(76, 175, 80, 1),
                                  )
                                : SvgPicture.asset(
                                    'assets/svg/down.svg',
                                    color: const Color.fromRGBO(244, 67, 54, 1),
                                  ),
                          ),
                          Text(
                            '₹ ${holding.fundDayChange}K (+${holding.fundPercentageChange}%)',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              textStyle: holding.isProfit
                                  ? const TextStyle(
                                      color: Color.fromRGBO(76, 175, 80, 1),
                                    )
                                  : const TextStyle(
                                      color: Color.fromRGBO(244, 67, 54, 1),
                                    ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Invested Amount',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          textStyle: const TextStyle(
                            color: Color.fromRGBO(117, 117, 117, 1),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '₹ ',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              textStyle: const TextStyle(
                                color: Color.fromRGBO(117, 117, 117, 1),
                              ),
                            ),
                          ),
                          Text(
                            '${holding.investedAmount} Lac',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              letterSpacing: 0.15,
                              textStyle: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [SmallCard(holding: holding)],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SmallCard extends StatelessWidget {
  const SmallCard({
    Key? key,
    required this.holding,
  }) : super(key: key);

  final Holding holding;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              backgroundBlendMode: BlendMode.srcOver,
              borderRadius: BorderRadius.circular(16),
              color: const Color.fromRGBO(238, 243, 255, 1),
              border: Border.all(
                  color: const Color.fromRGBO(235, 239, 245, 1),
                  width: 1.5,
                  style: BorderStyle.solid),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(191, 202, 217, 0.9),
                  offset: Offset(4, 4),
                  blurRadius: 4,
                  spreadRadius: 0,
                  blurStyle: BlurStyle.inner,
                ),
                BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    offset: Offset(-4, -4),
                    blurRadius: 4,
                    spreadRadius: 0,
                    blurStyle: BlurStyle.inner),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              holding.list[0],
              color: Color.fromRGBO(51, 102, 255, 1),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
