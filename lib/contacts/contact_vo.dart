import 'package:flutter/material.dart';

class ContactVo{
  String sectionKey;
  String name;
  String avatarUrl;

  ContactVo({@required this.sectionKey, this.name, this.avatarUrl});
}

List<ContactVo> contactData = [
  new ContactVo(
      sectionKey: 'A',
      name: 'A家具销售',
      avatarUrl: ''
  ),
  new ContactVo(
      sectionKey: 'B',
      name: 'B家具销售',
      avatarUrl: ''
  ),
  new ContactVo(
      sectionKey: 'C',
      name: 'C家具销售',
      avatarUrl: ''
  ),
  new ContactVo(
      sectionKey: 'D',
      name: 'D家具销售',
      avatarUrl: ''
  ),
  new ContactVo(
      sectionKey: 'D',
      name: '大富豪',
      avatarUrl: ''
  ),
  new ContactVo(
      sectionKey: 'E',
      name: 'E家具销售',
      avatarUrl: ''
  ),
  new ContactVo(
      sectionKey: 'E',
      name: '饿了么',
      avatarUrl: ''
  ),
  new ContactVo(
      sectionKey: 'F',
      name: 'F家具销售',
      avatarUrl: ''
  ),
  new ContactVo(
      sectionKey: 'G',
      name: 'G家具销售',
      avatarUrl: ''
  ),
  new ContactVo(
      sectionKey: 'H',
      name: 'H家具销售',
      avatarUrl: ''
  ),
];
