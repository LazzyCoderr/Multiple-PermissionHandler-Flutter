import 'package:flutter/material.dart';
import 'package:permission_group_flutter/permission_handler.dart';

class PermissionService extends StatefulWidget {
  const PermissionService({Key? key}) : super(key: key);

  @override
  PermissionServiceState createState() => PermissionServiceState();
}

class PermissionServiceState extends State<PermissionService> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Multiple PermissionHandler')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: const Text('Check all Permissions'),
              onPressed: () {
                PermissionHandler().requestPermission();
              },
            ),
            ElevatedButton(
              child: const Text('Check storage permission'),
              onPressed: () {
                PermissionHandler().requestStoragePermission().then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(value ? 'Storage permission granted...!' : 'Storage permission denied...!'),
                    ),
                  );
                });
              },
            ),
            ElevatedButton(
              child: const Text('Check camera Permissions'),
              onPressed: () {
                PermissionHandler().requestCameraPermission().then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(value ? 'Camera permission granted...!' : 'Camera permission denied...!'),
                    ),
                  );
                });
              },
            ),
            ElevatedButton(
              child: const Text('Check sms Permissions'),
              onPressed: () {
                PermissionHandler().requestSMSPermission().then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(value ? 'Sms permission granted...!' : 'Sms permission denied...!'),
                    ),
                  );
                });
              },
            ),
            ElevatedButton(
              child: const Text('Check calender Permissions'),
              onPressed: () {
                PermissionHandler().requestCalenderPermission().then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(value ? 'Calender permission granted...!' : 'Calender permission denied...!'),
                    ),
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
