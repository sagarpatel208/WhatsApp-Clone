import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utilities/data_source.dart';

class StatusComponent extends StatelessWidget {
  const StatusComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List statusList = DataSource.statusData;
    return Column(
      children: [
        ListTile(
          leading: ClipOval(child: Image.asset("assets/user/man1.png")),
          title: const Text(
            "My status",
            style: TextStyle(fontSize: 17),
          ),
          subtitle: const Text("tap to add status update"),
        ),
        Container(
          height: 2,
          color: Colors.grey.shade300,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: statusList.length,
          itemBuilder: (BuildContext context, int index) {
            return StatusWidget(statusData: statusList[index]);
          },
        )
      ],
    );
  }
}

class StatusWidget extends StatelessWidget {
  StatusWidget({Key? key, required this.statusData}) : super(key: key);
  Map statusData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: statusData['status_view']
                ? Colors.grey.shade500
                : Theme.of(context).primaryColor,
            width: 3,
          ),
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: ClipOval(
            child: Image.asset(statusData['user_image']),
          ),
        ),
      ),
      title: Text(
        statusData['user_name'],
        style: const TextStyle(fontSize: 17),
      ),
      subtitle: Text(statusData['status_time']),
    );
  }
}
