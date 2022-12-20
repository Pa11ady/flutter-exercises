import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(title: Text('Настройка')),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [_UserInfo(), SizedBox(height: 30), _MenuBlock()],
          ),
        ));
  }
}

class _MenuBlock extends StatelessWidget {
  const _MenuBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: [
            _MenuRow(icon: Icons.favorite, text: 'Избраное'),
            _MenuRow(icon: Icons.call, text: 'Звонки'),
            _MenuRow(icon: Icons.computer, text: 'Устройства'),
            _MenuRow(icon: Icons.folder, text: 'Папка с чатами'),
          ],
        ));
  }
}

class _MenuRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _MenuRow({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(icon),
          SizedBox(width: 15),
          Expanded(child: Text(text)),
          //SizedBox(width: 15),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 30),
          _AvatarWidget(),
          SizedBox(height: 30),
          _UserNameWidget(),
          SizedBox(height: 10),
          _UserPhoneWidget(),
          SizedBox(height: 10),
          _NickNameWidget(),
        ],
      ),
    );
  }
}

class _NickNameWidget extends StatelessWidget {
  const _NickNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('@petrov777',
        style: TextStyle(color: Colors.grey, fontSize: 17));
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Ivan Petrov',
        style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600));
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('+7(777)777 77 77',
        style: TextStyle(color: Colors.grey, fontSize: 15));
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, child: Placeholder());
  }
}
