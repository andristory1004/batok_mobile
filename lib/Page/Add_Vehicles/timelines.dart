import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class timeLine extends StatefulWidget {
  timeLine({Key? key}) : super(key: key);

  @override
  State<timeLine> createState() => _timeLineState();
}

class _timeLineState extends State<timeLine> {
  final List<Map<String, dynamic>> list = [
    {
      'Years': {'1': 'January', '2': 'Februari'},
      'Make': {'1': 'BMW', '2': 'Audi'}
    }
  ];

  @override
  Widget build(BuildContext context) {
    // return Timeline.tileBuilder(
    //   builder: TimelineTileBuilder.fromStyle(
    //     indicatorPositionBuilder: ,
    //     connectorStyle: ConnectorStyle.dashedLine,
    //     indicatorStyle: IndicatorStyle.outlined,
    //     contentsAlign: ContentsAlign.alternating,
    //     contentsBuilder: (context, index) => Padding(
    //       padding: const EdgeInsets.all(24.0),
    //       child: Text('Timeline Event $index'),
    //     ),
    //     itemCount: 10,
    //   ),
    // );

    return Container(
        child: Row(
      children: [
        TimelineTile(
          axis: TimelineAxis.horizontal,
          alignment: TimelineAlign.center,
          endChild: Container(
            constraints: const BoxConstraints(
              minWidth: 120,
            ),
            color: Colors.lightGreenAccent,
          ),
          startChild: Container(
            color: Colors.amberAccent,
          ),
        ),
        TimelineTile(
          axis: TimelineAxis.horizontal,
          alignment: TimelineAlign.center,
          endChild: Container(
            constraints: const BoxConstraints(
              minWidth: 120,
            ),
            color: Colors.lightGreenAccent,
          ),
          startChild: Container(
            color: Colors.amberAccent,
          ),
        ),
      ],
    ));
  }
}
