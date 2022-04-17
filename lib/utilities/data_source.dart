class DataSource {
  // Chat listing data
  static const List chatData = [
    {
      "user_image": "assets/user/man1.png",
      "user_name": "Vinay Karan",
      "last_message":
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.",
      "last_message_time": "3:24 PM",
      "unread_message_count": 3,
    },
    {
      "user_image": "assets/user/woman1.png",
      "user_name": "Anuja Radha",
      "last_message":
          "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab.",
      "last_message_time": "12:24 PM",
      "unread_message_count": 6,
    },
    {
      "user_image": "assets/user/man2.png",
      "user_name": "Anant Arabinda",
      "last_message":
          "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born.",
      "last_message_time": "7:27 AM",
      "unread_message_count": 1,
    },
    {
      "user_image": "assets/user/man3.png",
      "user_name": "Sudarshan Laxman",
      "last_message":
          "Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot.",
      "last_message_time": "Yesterday",
      "unread_message_count": 0,
    },
    {
      "user_image": "assets/user/man1.png",
      "user_name": "Rajneesh Swathi",
      "last_message":
          "The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc.",
      "last_message_time": "Yesterday",
      "unread_message_count": 2,
    },
    {
      "user_image": "assets/user/man2.png",
      "user_name": "Rohit Gobind",
      "last_message":
          "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.",
      "last_message_time": "Yesterday",
      "unread_message_count": 0,
    },
    {
      "user_image": "assets/user/woman2.png",
      "user_name": "Tamanna Malini",
      "last_message":
          "A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring.",
      "last_message_time": "Saturday",
      "unread_message_count": 0,
    },
    {
      "user_image": "assets/user/woman3.png",
      "user_name": "Tanvi Shailaja",
      "last_message":
          "One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin.",
      "last_message_time": "Saturday",
      "unread_message_count": 0,
    },
    {
      "user_image": "assets/user/man3.png",
      "user_name": "Surendra Kalyana",
      "last_message":
          "The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog.",
      "last_message_time": "Friday",
      "unread_message_count": 0,
    },
    {
      "user_image": "assets/user/woman1.png",
      "user_name": "Seema Aparna",
      "last_message":
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.",
      "last_message_time": "Friday",
      "unread_message_count": 0,
    },
  ];

  // Status listing data
  static const List statusData = [
    {
      "user_image": "assets/user/man1.png",
      "user_name": "Vinay Karan",
      "status_time": "20m ago",
      "status_view": false,
    },
    {
      "user_image": "assets/user/woman2.png",
      "user_name": "Tamanna Malini",
      "status_time": "1h ago",
      "status_view": false,
    },
    {
      "user_image": "assets/user/woman1.png",
      "user_name": "Seema Aparna",
      "status_time": "2h ago",
      "status_view": false,
    },
    {
      "user_image": "assets/user/man2.png",
      "user_name": "Rohit Gobind",
      "status_time": "7h ago",
      "status_view": false,
    },
    {
      "user_image": "assets/user/woman3.png",
      "user_name": "Tanvi Shailaja",
      "status_time": "15h ago",
      "status_view": true,
    },
  ];

  // Call listing data
  static const List callData = [
    {
      "user_image": "assets/user/man1.png",
      "user_name": "Vinay Karan",
      "call_time": "3:24 PM",
      "is_audio_call": false,
      "is_missed": false,
      "is_received": false,
    },
    {
      "user_image": "assets/user/woman1.png",
      "user_name": "Anuja Radha",
      "call_time": "12:24 PM",
      "is_audio_call": true,
      "is_missed": false,
      "is_received": true,
    },
    {
      "user_image": "assets/user/man2.png",
      "user_name": "Anant Arabinda",
      "call_time": "7:27 AM",
      "is_audio_call": true,
      "is_missed": false,
      "is_received": false,
    },
    {
      "user_image": "assets/user/woman1.png",
      "user_name": "Anuja Radha",
      "call_time": "Yesterday",
      "is_audio_call": false,
      "is_missed": true,
      "is_received": true,
    },
    {
      "user_image": "assets/user/man1.png",
      "user_name": "Rajneesh Swathi",
      "call_time": "Yesterday",
      "is_audio_call": false,
      "is_missed": true,
      "is_received": false,
    },
    {
      "user_image": "assets/user/man2.png",
      "user_name": "Rohit Gobind",
      "call_time": "Yesterday",
      "is_audio_call": false,
      "is_missed": false,
      "is_received": false,
    },
    {
      "user_image": "assets/user/woman1.png",
      "user_name": "Anuja Radha",
      "call_time": "Saturday",
      "is_audio_call": false,
      "is_missed": true,
      "is_received": false,
    },
    {
      "user_image": "assets/user/woman3.png",
      "user_name": "Tanvi Shailaja",
      "call_time": "Saturday",
      "is_audio_call": true,
      "is_missed": false,
      "is_received": true,
    },
    {
      "user_image": "assets/user/man2.png",
      "user_name": "Anant Arabinda",
      "call_time": "Friday",
      "is_audio_call": false,
      "is_missed": false,
      "is_received": false,
    },
    {
      "user_image": "assets/user/woman1.png",
      "user_name": "Seema Aparna",
      "call_time": "Friday",
      "is_audio_call": true,
      "is_missed": false,
      "is_received": true,
    },
  ];
}
