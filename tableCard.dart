import 'package:flutter/material.dart';

class TapeCard extends StatefulWidget {
  const TapeCard({
    this.taple_no,
    Key? key,
  }) : super(key: key);
  final String? taple_no;

  @override
  State<TapeCard> createState() => _TapeCardState();
}

class _TapeCardState extends State<TapeCard> {
  bool order = false;
  @override
  void initState() {
    // dvds.initSocket();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 50,
        shadowColor: Colors.black,
        color: order ? Colors.red[200] : Colors.white,
        child: SizedBox(
          width: 150,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.taple_no.toString(),
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green[900],
                  ), //Textstyle
                ), //Text

                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        order ? order = false : order = true;
                        // TableStatus status =
                        //     TableStatus(status: "sending messagew", tableId: 1);
                        // dvds.sendTableStatus(status);
                        print("saved ");
                      });
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Row(
                        children: const [Icon(Icons.touch_app), Text('Order')],
                      ),
                    ),
                  ),
                ) //SizedBox
                ,
                Text(
                  'Taple',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ), //Textstyle
                ), //T
              ],
            ), //Column
          ), //Padding
        ), //SizedBox
      ),
    );
  }
}
