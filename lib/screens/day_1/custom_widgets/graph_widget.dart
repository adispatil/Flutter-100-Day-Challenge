import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_challange/constants/trend_data.dart';
import 'package:flutter_challange/constants/color_constants.dart' as MyColor;

class Graph extends StatefulWidget {
  @override
  _GraphState createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  List<Color> gradientColors = [
    MyColor.BTCDARK,
    const Color(0xFFFFC843),
  ];
  final List<int> showIndexes = const [2, 4, 6];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 3),
            blurRadius: 3,
            spreadRadius: 0,
            color: MyColor.BOXSHADOWCOLOR,
          ),
          BoxShadow(
              offset: Offset.zero,
              blurRadius: 0,
              spreadRadius: 0,
              color: Colors.white)
        ],
      ),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Colors.white),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: LineChart(
                mainData(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Color(0xFFFFE9C0),
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFFF931A),
                      radius: 5,
                    ),
                  ),
                  Text(
                    "1 BTC = \$${TREND.conversionRate}",
                    style: TextStyle(fontSize: 16, color: MyColor.kTextColorSecondary),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      backgroundColor: Colors.white,
      gridData: FlGridData(
        show: false,
        drawVerticalLine: false,
      ),
      titlesData: FlTitlesData(
        show: false,
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 10,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: TREND.recentPrice.map((curPoint) {
            return FlSpot(curPoint.xPoint, curPoint.yPoint);
          }).toList(),
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 7,
                  color: Color(0xFFFFC843),
                  strokeWidth: 5,
                  strokeColor: Color(0x99FFE2BA),
                );
              },
              checkToShowDot: (spot, barData) {
                return spot.x == TREND.recentPrice.last.xPoint;
              }),
          belowBarData: BarAreaData(
            show: true,
            colors: [
              Color(0xFFFFF7EE),
            ],
          ),
        ),
      ],
    );
  }
}