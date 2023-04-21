import 'dart:convert';
import 'dart:io';

class TableStatus {
  final int tableId;
  final String status;

  TableStatus({required this.tableId, required this.status});

  Map<String, dynamic> toJson() => {'tableId': tableId, 'status': status};
}

class TableStatusService {
  static const int port = 55555;
  static const String address = '255.255.255.255';

  late RawDatagramSocket _socket;

  Future<void> initSocket() async {
    _socket = await RawDatagramSocket.bind(InternetAddress.anyIPv4, port);
    _socket.listen(_handleMessage);
  }

  void _handleMessage(RawSocketEvent event) {
    final datagram = _socket.receive();
    if (datagram == null) return;
    final message = utf8.decode(datagram.data);
    final jsonData = json.decode(message);
    final tableStatus =
        TableStatus(tableId: jsonData['tableId'], status: jsonData['status']);
    // TODO: Handle the received table status message as needed.
  }

  void sendTableStatus(TableStatus tableStatus) {
    final message = json.encode(tableStatus.toJson());
    final data = utf8.encode(message);
    _socket.send(data, InternetAddress(address), port);
    print("object degerhrtyjuk");
  }

  void dispose() {
    _socket.close();
  }
}






// import 'package:wifi/wifi.dart';

// void main() async {
//   // Replace with your own table ID and status
//   String tableID = 'Table 1';
//   String status = 'Occupied';

//   // Get the current IP address and subnet mask
//   String ipAddress = await Wifi.ip;
//   List<String> ipParts = ipAddress.split('.');
//   String subnetMask = await Wifi.subnet;

//   // Combine the IP address and subnet mask to get the network address
//   List<String> subnetParts = subnetMask.split('.');
//   List<String> networkParts = [];
//   for (int i = 0; i < 4; i++) {
//     networkParts.add((int.parse(ipParts[i]) & int.parse(subnetParts[i])).toString());
//   }
//   String networkAddress = networkParts.join('.');

//   // Send the broadcast message to all IP addresses in the network
//   for (int i = 1; i < 255; i++) {
//     String destinationIP = networkAddress + '.$i';
//     _sendBroadcastMessage(destinationIP, tableID, status);
//   }
// }

// void _sendBroadcastMessage(String destinationIP, String tableID, String status) async {
//   // Create a UDP socket and bind to a random port
//   RawDatagramSocket socket = await RawDatagramSocket.bind(InternetAddress.anyIPv4, 0);

//   // Create a message with the table ID and status
//   Map<String, String> message = {'tableID': tableID, 'status': status};
//   String jsonMessage = json.encode(message);
//   List<int> data = utf8.encode(jsonMessage);

//   // Send the message to the destination IP address on port 5000
//   socket.send(data, InternetAddress(destinationIP), 5000);

//   // Close the socket
//   socket.close();
// }


// // To listen for broadcast messages on port 5000, you can create a UDP socket and bind it to that port:


// RawDatagramSocket.bind(InternetAddress.anyIPv4, 5000).then((RawDatagramSocket socket) {
//   socket.listen((RawSocketEvent event) {
//     Datagram datagram = socket.receive();
//     if (datagram != null) {
//       String sourceIP = datagram.address.address;
//       String message = utf8.decode(datagram.data);
//       print('Received broadcast message from $sourceIP: $message');
//       // Handle the message here
//     }
//   });
// });