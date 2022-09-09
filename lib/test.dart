import 'package:appp/data_test.dart';
import 'package:flutter/material.dart';
class DemoTestStateful extends StatefulWidget {
  final Quest quest;
  final QuestUpdateCallBack callBack;

  const DemoTestStateful(this.quest, this.callBack, {Key? key}) : super(key: key);

  @override
  State<DemoTestStateful> createState() => _DemoTestStatefulState();
}

class _DemoTestStatefulState extends State<DemoTestStateful> {
  late Quest quest;

  @override
  void initState() {
    super.initState();
    quest = widget.quest;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text(quest.name), ..._getFloatButton(quest)],
    );
  }

  List<Widget> _getFloatButton(Quest quest) {
    return quest.listAnswer.map((answer) => FloatingActionButton(
            onPressed: () {
              _update(answer);
            },
            backgroundColor: answer == quest.selected ? Colors.red : Colors.blue,
            child: Text(answer)))
        .toList();
  }

  _update(String selected) {
    widget.callBack(selected);
    setState(() {
      quest.selected = selected;
    });
  }
}

typedef QuestUpdateCallBack = void Function(String selected);
