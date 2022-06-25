import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class StackHeader extends StatelessWidget {
  const StackHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: 170,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(51, 0, 153, 1),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Holdings Current Value',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    letterSpacing: 0.1,
                    textStyle: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.6),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '₹ ',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        textStyle: const TextStyle(
                          color: Color.fromRGBO(76, 175, 80, 1),
                        ),
                      ),
                    ),
                    Text(
                      '2.88 Lac',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 0.15,
                        textStyle: const TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: SizedBox(
                          child: SvgPicture.asset(
                            'assets/svg/up.svg',
                            color: const Color.fromRGBO(76, 175, 80, 1),
                          ),
                        )),
                    Text(
                      '₹ 45,535.78 (+18.77%)',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          textStyle: const TextStyle(
                            color: Color.fromRGBO(76, 175, 80, 1),
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Invested Amount',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      letterSpacing: 0.15,
                      textStyle: const TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.6),
                      ),
                    ),
                  ),
                ),
                Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Text(
                    '₹ ',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      textStyle: const TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                  Text(
                    '2.8 Lac',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      letterSpacing: 0.15,
                      textStyle: const TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  )
                ])
              ],
            ),
          ),
        ),
        Positioned(
          top: 170 - 35,
          child: Container(
              height: 64,
              width: MediaQuery.of(context).size.width - 32,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromRGBO(51, 102, 255, 1),
                  border: Border.all(
                      color: const Color.fromRGBO(255, 255, 255, 0.13),
                      width: 1,
                      style: BorderStyle.solid),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(51, 102, 255, 0.25),
                      offset: Offset(4, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                      blurStyle: BlurStyle.normal,
                    ),
                    BoxShadow(
                        color: Color.fromRGBO(92, 133, 254, 0.7),
                        offset: Offset(-4, -4),
                        blurRadius: 4,
                        spreadRadius: 0,
                        blurStyle: BlurStyle.normal),
                  ]),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 12, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Ask Koshex Bot',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromRGBO(240, 244, 255, 1),
                          ),
                        ),
                        Text(
                          'Show me the updates for 1 day',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 14,
                              letterSpacing: 0.1),
                        ),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: SizedBox(
                          child: SvgPicture.asset(
                            'assets/svg/chevron.left.svg',
                            alignment: Alignment.centerRight,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
