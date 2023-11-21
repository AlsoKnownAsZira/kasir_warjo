import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineDefault extends StatefulWidget {
  const LineDefault({Key? key}) : super(key: key);

  @override
  _LineDefaultState createState() => _LineDefaultState();
}

class _LineDefaultState extends State<LineDefault> {
  List<_ChartData>? chartData;

  @override
  void initState() {
    chartData = <_ChartData>[
      _ChartData(
        01,
        28300000,
       const Color.fromARGB(255, 234, 96, 96),
      ),
      _ChartData(
        02,
        25200000,
          const Color.fromARGB(255, 96, 167, 234),
      ),
      _ChartData(
        03,
        27500000,
            const Color.fromARGB(255, 96, 167, 234),
      ),
      _ChartData(
        04,
        29450000,
            const Color.fromARGB(255, 234, 96, 96),
      ),
      _ChartData(
        05,
        27000000,
            const Color.fromARGB(255, 234, 96, 96),
      ),
      _ChartData(
        06,
        22500000,
             const Color.fromARGB(255, 96, 167, 234),
      ),
      _ChartData(
        07,
        23650000,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfCartesianChart(
        series: _getDefaultLineSeries(),
        tooltipBehavior: TooltipBehavior(enable: true),
      ),
    );
  }

  List<LineSeries<_ChartData, num>> _getDefaultLineSeries() {
    return <LineSeries<_ChartData, num>>[
      LineSeries<_ChartData, num>(
        animationDuration: 2500,
        dataSource: chartData!,
        width: 5,
        name: 'Pemasukan',
        xValueMapper: (_ChartData sales, _) => sales.x,
        yValueMapper: (_ChartData sales, _) => sales.y,
        pointColorMapper: (_ChartData sales, _) => sales.lineColor,
        markerSettings: const MarkerSettings(isVisible: true),
      ),
      
    ];
  }

  @override
  void dispose() {
    chartData!.clear();
    super.dispose();
  }
}

class _ChartData {
  _ChartData(
    this.x,
    this.y,
    [this.lineColor]
  );
  final double x;
  final double y;
  final Color? lineColor;
}
