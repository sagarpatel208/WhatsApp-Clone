import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utilities/data_source.dart';

class ChatComponent extends StatelessWidget {
  const ChatComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List chatList = DataSource.chatData;

    return ListView.builder(
      itemCount: chatList.length,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return ChatWidget(chatData: chatList[index]);
      },
    );
  }
}

class ChatWidget extends StatelessWidget {
  ChatWidget({Key? key, required this.chatData}) : super(key: key);
  Map chatData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListTile(
        leading: ClipOval(child: Image.asset(chatData['user_image'])),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              chatData['user_name'],
              style: const TextStyle(fontSize: 17),
            ),
            Text(
              chatData['last_message_time'],
              style: TextStyle(
                fontSize: 14,
                color: chatData['unread_message_count'] == 0
                    ? Colors.black
                    : Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                chatData['last_message'],
                maxLines: 1,
              ),
            ),
            if (chatData['unread_message_count'] != 0)
              Container(
                height: 23,
                width: 23,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "${chatData['unread_message_count']}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
