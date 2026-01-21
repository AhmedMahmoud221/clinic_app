import 'package:clinic_app/features/profile/ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
// ويدجت الشاشة الرئيسية
class ChatMessagesScreen extends StatefulWidget {
  final String userName;
  const ChatMessagesScreen({super.key, required this.userName});

  @override
  State<ChatMessagesScreen> createState() => _ChatMessagesScreenState();
}

class _ChatMessagesScreenState extends State<ChatMessagesScreen> {
  final TextEditingController _messageController = TextEditingController();
  // بيانات وهمية للعرض فقط
  final List<Map<String, dynamic>> dummyMessages = [
    {'text': 'Hello Doctor!', 'isMe': true, 'type': 'text', 'time': DateTime.now()},
    {'text': 'Hi! How can I help you?', 'isMe': false, 'type': 'text', 'time': DateTime.now()},
    {'text': 'image_url_here', 'isMe': false, 'type': 'image', 'time': DateTime.now()},
    {'text': 'voice_path_here', 'isMe': true, 'type': 'voice', 'time': DateTime.now()},
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? Colors.black : const Color(0xFFF5F5F5),
      body: Column(
        children: [
          CustomAppbar(title: 'Dr Randy Wigham'),
          // 1. منطقة عرض الرسائل
          Expanded(
            child: ListView.builder(
              reverse: true, // عشان الرسائل تبدأ من تحت
              padding: const EdgeInsets.all(16),
              itemCount: dummyMessages.length,
              itemBuilder: (context, index) {
                final msg = dummyMessages[index];
                if (msg['type'] == 'image') return _buildImageBubble(msg['isMe']);
                if (msg['type'] == 'voice') return _buildAudioBubble(msg['isMe']);
                return _buildChatBubble(msg['text'], msg['isMe'], isDark);
              },
            ),
          ),
          // 2. منطقة الإدخال
          _buildMessageInput(isDark),
          // verticalSpace(16),
        ],
      ),
    );
  }

  // فقاعة النص
  Widget _buildChatBubble(String text, bool isMe, bool isDark) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isMe ? Colors.blue : (isDark ? Colors.grey[800] : Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(text, style: TextStyle(color: isMe ? Colors.white : (isDark ? Colors.white : Colors.black))),
      ),
    );
  }

  // فقاعة الصورة (UI فقط)
  Widget _buildImageBubble(bool isMe) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        width: 200,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[300],
        ),
        child: const Icon(Icons.image, size: 50, color: Colors.grey),
      ),
    );
  }

  // فقاعة الصوت (UI فقط)
  Widget _buildAudioBubble(bool isMe) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(10),
        width: 200,
        decoration: BoxDecoration(
          color: isMe ? Colors.blue[100] : Colors.grey[200],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Icon(Icons.play_arrow, color: isMe ? Colors.blue : Colors.grey),
            const Expanded(child: LinearProgressIndicator(value: 0.3)),
          ],
        ),
      ),
    );
  }

  // منطقة الإدخال (TextField والزراير)
  Widget _buildMessageInput(bool isDark) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      color: Colors.grey[200],
      child: Row(
        children: [
          // الـ TextField
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 25),
                hintText: "Type a message...",
                hintStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: isDark ? Colors.black : Colors.grey[100],
                
                // 1. أيقونة الإيموجي على الشمال
                prefixIcon: const Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
                
                // 2. أيقونات الكاميرا والشير على اليمين
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.attach_file, color: Colors.grey),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.camera_alt, color: Colors.grey),
                      onPressed: () {},
                    ),
                  ],
                ),
                
                // 3. تعديل الـ Border ليكون مستطيل بريدياس خفيف
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          
          // زرار المايك
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue,
            child: IconButton(
              icon: const Icon(Icons.mic, color: Colors.white, size: 32),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}