import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavItem {
  final int id;
  final IconData icon;
  final String label;

  NavItem({required this.label, required this.id, required this.icon});
}

List<NavItem> navItems = [
  NavItem(id: 0, label: "홈", icon: Icons.home),
  NavItem(id: 1, label: "공개 예정", icon: FontAwesomeIcons.film),
  NavItem(
      id: 2, label: "저장한 콘텐츠 목록", icon: FontAwesomeIcons.arrowAltCircleDown),
];
