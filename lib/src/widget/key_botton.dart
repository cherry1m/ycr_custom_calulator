import 'package:flutter/material.dart';

class KeyButton extends StatelessWidget {
  final dynamic label;
  final void Function()? onTap;
  const KeyButton({super.key, required this.label, this.onTap})
      : assert(label != null, "label은  Null이 될 수 없습니다."),
        assert(onTap != null, "버튼 이벤트가 반드시 필요합니다!");

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: InkWell(
          onTap: onTap,
          highlightColor: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          child: _buildButton()),
    );
  }

  Widget _buildButton() {
    switch (label.runtimeType) {
      case String:
        return _buildStringButton();
      case IconData:
        return _buildIconButton();
      default:
        return Container();
    }
  }

  Widget _buildStringButton() {
    return Ink(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 154, 199, 236), borderRadius: BorderRadius.circular(12.0)),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(fontSize: 50, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildIconButton() {
    return Ink(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 242, 164, 190), borderRadius: BorderRadius.circular(12.0)),
      child: Center(
          child: Icon(
        label,
        color: Colors.white,
        size: 50,
      )),
    );
  }
}