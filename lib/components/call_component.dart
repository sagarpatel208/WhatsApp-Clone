import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utilities/data_source.dart';

class CallComponent extends StatelessWidget {
  const CallComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List callList = DataSource.callData;

    return ListView.builder(
      itemCount: callList.length,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return CallWidget(callData: callList[index]);
      },
    );
  }
}

class CallWidget extends StatelessWidget {
  CallWidget({Key? key, required this.callData}) : super(key: key);
  Map callData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipOval(
        child: Image.asset(callData['user_image']),
      ),
      title: Text(
        callData['user_name'],
        style: const TextStyle(fontSize: 17),
      ),
      subtitle: Row(
        children: [
          Icon(
            callData['is_received'] ? Icons.call_received : Icons.call_made,
            color: callData['is_missed']
                ? Colors.red
                : Theme.of(context).primaryColor,
            size: 17,
          ),
          const SizedBox(width: 3),
          Text(callData['call_time']),
        ],
      ),
      trailing: Icon(
        callData['is_audio_call'] ? Icons.phone : Icons.videocam_rounded,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
