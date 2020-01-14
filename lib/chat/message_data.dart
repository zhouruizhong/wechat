class MessageData{
  String avatar;
  String title;
  String subTitle;
  DateTime time;
  MessageType type;

  MessageData(this.avatar, this.title, this.subTitle, this.time, this.type);
}

enum MessageType {SYSTEM, PUBLIC, CHAT, GROUP}

List<MessageData> messageData = [
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578815249832&di=db2f3fc8e85d3e077086cc823d0f05dd&imgtype=0&src=http%3A%2F%2Fa2.att.hudong.com%2F87%2F21%2F19300001392461132643211668226_s.jpg", "大耳贼", "突然想到的", new DateTime.now(), MessageType.CHAT),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578817532710&di=cfd3c30267cb5ab10593ac24164a0550&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20171210%2F362dcd1c009842ff99b33f5d51bbfb80.jpeg", "大耳贼", "突然想到的", new DateTime.now(), MessageType.CHAT),
  new MessageData("https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2575047779,2966283883&fm=26&gp=0.jpg", "灰太狼", "突然想到的", new DateTime.now(), MessageType.CHAT),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578817532709&di=436e7bdcbcaa4ceb494658d28dc9cef7&imgtype=0&src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20180122%2F22%2F1516630185-WYSaFdpTKJ.jpg", "小女孩", "突然想到的", new DateTime.now(), MessageType.CHAT),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578817532709&di=153dce01456b12c663e0dbc58fde540d&imgtype=0&src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20180803%2F23%2F1533308847-sJINRfclxg.jpeg", "小正太", "突然想到的", new DateTime.now(), MessageType.CHAT),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578817532708&di=af08a842b5fd62f65f054fd8c3f449ed&imgtype=0&src=http%3A%2F%2Fpic2.zhimg.com%2F50%2Fv2-9d9463d6c15a2f67a58f91e026bd4d03_hd.jpg", "悟空", "突然想到的", new DateTime.now(), MessageType.CHAT),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578817532708&di=ad61716af4789462d4c7addb02c902c9&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F40%2F47%2F01300000238939122221473323865.jpg", "毛主席", "突然想到的", new DateTime.now(), MessageType.CHAT),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578817532692&di=5e357f1a9b5993d5c7f134c1f9be4c42&imgtype=0&src=http%3A%2F%2Fpic2.zhimg.com%2F50%2Fv2-b9801a55d5b90a21556f247cdc504829_hd.jpg", "一休哥", "突然想到的", new DateTime.now(), MessageType.CHAT),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578815249832&di=db2f3fc8e85d3e077086cc823d0f05dd&imgtype=0&src=http%3A%2F%2Fa2.att.hudong.com%2F87%2F21%2F19300001392461132643211668226_s.jpg", "大耳贼", "突然想到的", new DateTime.now(), MessageType.CHAT),
  new MessageData("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578815249832&di=db2f3fc8e85d3e077086cc823d0f05dd&imgtype=0&src=http%3A%2F%2Fa2.att.hudong.com%2F87%2F21%2F19300001392461132643211668226_s.jpg", "大耳贼", "突然想到的", new DateTime.now(), MessageType.CHAT),
];
