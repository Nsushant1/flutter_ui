import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class AcScreen extends StatefulWidget {
  const AcScreen({super.key});

  @override
  State<AcScreen> createState() => _AcScreenState();
}

class _AcScreenState extends State<AcScreen> {
  var radialValue = 15.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffdfdfd),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff8285ee),
                      ),
                    ),
                    const Text(
                      "Air Conditoner",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 35),
                    SfRadialGauge(
                      axes: <RadialAxis>[
                        RadialAxis(
                          minimum: 0,
                          maximum: 40,
                          startAngle: 90,
                          endAngle: 450,
                          showLabels: true,
                          labelsPosition: ElementsPosition.outside,
                          showTicks: false,
                          radiusFactor: 0.8,
                          interval: 10,
                          showFirstLabel: false,
                          labelFormat: '{value}',
                          axisLineStyle: const AxisLineStyle(
                            cornerStyle: CornerStyle.bothFlat,
                            color: Colors.black12,
                            thickness: 22,
                          ),
                          pointers: <GaugePointer>[
                            RangePointer(
                              value: radialValue,
                              cornerStyle: CornerStyle.bothCurve,
                              width: 22,
                              sizeUnit: GaugeSizeUnit.logicalPixel,
                              color: Color(0xff8285ee),
                            ),
                            MarkerPointer(
                              value: radialValue,
                              enableDragging: true,
                              onValueChanged: (value) {
                                setState(() {
                                  radialValue = value;
                                });
                              },
                              markerHeight: 35,
                              markerWidth: 35,
                              markerType: MarkerType.circle,
                              color: Color(0xff8285ee),
                              borderWidth: 2,
                              borderColor: Colors.white54,
                            ),
                          ],
                          annotations: [
                            GaugeAnnotation(
                              angle: 90,
                              axisValue: 5,
                              positionFactor: 0.1,
                              widget: Column(
                                mainAxisSize: .min,
                                children: [
                                  const Icon(
                                    Icons.thermostat,
                                    color: Color(0xff8285ee),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
