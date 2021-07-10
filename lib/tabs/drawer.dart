import 'package:cloneapps/constants.dart';
import 'package:flutter/material.dart';

class Drawers extends StatefulWidget {
  Drawers({Key key}) : super(key: key);

  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(
        color: secondary,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              color: primary,
            padding: const EdgeInsets.fromLTRB(20, 50, 0, 10),
            width: MediaQuery.of(context).size.width * 0.45,
             child: Text(
                'Gmail',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 22.0,
                ),
              ),
            ),
            Divider(),
            Container(
              color: drawerSelected,
              child: ListTile(
                leading: Icon(Icons.filter, color: drawerSelectedIcon),
                title: Text('All inboxes',
                  style: TextStyle(color: drawerSelectedIcon)
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.inbox, color: Colors.grey),
              title: Text('Inbox',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            ListTile(
              leading: Icon(Icons.label_important_outline, color: Colors.grey),
              title: Text('Important',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            ListTile(
              leading: Text('RECENT LABELS',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            ListTile(
              leading: Icon(Icons.label, color: Colors.grey),
              title: Text('Important',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            ListTile(
              leading: Text('ALL LABELS',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            ListTile(
              leading: Icon(Icons.star_border, color: Colors.grey),
              title: Text('Important',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            ListTile(
              leading: Icon(Icons.access_time, color: Colors.grey),
              title: Text('Snoozed',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            ListTile(
              leading: Icon(Icons.label_important_outline, color: Colors.grey),
              title: Text('Important',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            ListTile(
              leading: Icon(Icons.send, color: Colors.grey),
              title: Text('Sent',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            ListTile(
              leading: Icon(Icons.schedule_send, color: Colors.grey),
              title: Text('Scheduled',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            ListTile(
              leading: Icon(Icons.outbox, color: Colors.grey),
              title: Text('Outbox',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            ListTile(
              leading: Icon(Icons.file_copy, color: Colors.grey),
              title: Text('Drafts',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            ListTile(
              leading: Icon(Icons.mail, color: Colors.grey),
              title: Text('All mail',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            ListTile(
              leading: Icon(Icons.error_outline, color: Colors.grey),
              title: Text('Spam',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            ListTile(
              leading: Icon(Icons.delete_outline, color: Colors.grey),
              title: Text('Trash',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            Divider(),
            ListTile(
              leading: Text('GOOGLE APPS',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.grey),
              title: Text('Contact',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey),
              title: Text('Settings',
                style: TextStyle(color: Colors.grey)
              ),
            ),
            ListTile(
              leading: Icon(Icons.help, color: Colors.grey),
              title: Text('Help & Feedback',
                style: TextStyle(color: Colors.grey)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
