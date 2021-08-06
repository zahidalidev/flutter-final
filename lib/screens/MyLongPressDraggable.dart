import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/Widgets/Card.dart';
import 'package:flutter_application_1/Widgets/SmallCard.dart';

class MyLongPressDraggable extends StatelessWidget {
  Widget _buildDragTarget(context) {
    return DragTarget<int>(
      builder: (BuildContext context, List<int> data, List<dynamic> rejects) {
        return Container(
          width: 300,
          height: 270,
          color: Colors.teal[100],
        );
      },
      onAccept: (int data) {
        print('onAccept');
        showAlertDialog(context);
      },
      onAcceptWithDetails: (DragTargetDetails<int> dragTargetDetails) {
        print('onAcceptWithDetails');
        print('Data: ${dragTargetDetails.data}');
        print('Offset: ${dragTargetDetails.offset}');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          LongPressDraggable<int>(
            data: 1,
            axis: Axis.vertical,
            child: MyCard(
              title: 'Card 1 Title',
              description:
                  "Greyhound divisively hello coldly wonderfully marginally far upon excluding.",
              image: "lib/assets/smash3.jpg",
            ),
            feedback: SmallCard(
              title: 'Card 2 Title',
              description:
                  "Greyhound divisively hello coldly wonderfully marginally far upon excluding.",
              image: "lib/assets/numbers.png",
            ),
            childWhenDragging: MyCard(
              title: 'Card 3 Title',
              description:
                  "Greyhound divisively hello coldly wonderfully marginally far upon excluding.",
              image: "lib/assets/smash2.jpg",
            ),
            dragAnchor: DragAnchor.child,
            onDragStarted: () {
              print('onDragStarted');
            },
            onDragCompleted: () {
              print('onDragCompleted');
            },
            onDraggableCanceled: (Velocity velocity, Offset offset) {
              print('onDraggableCanceled');
              print('velocity: $velocity}');
              print('offset: $offset');
              showAlertDialog2(context);
            },
            onDragEnd: (DraggableDetails details) {
              print('onDragEnd');
              print('wasAccepted: ${details.wasAccepted}');
              print('velocity: ${details.velocity}');
              print('offset: ${details.offset}');
            },
          ),
          _buildDragTarget(context),
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Alert"),
    content: Text("Dragable accepted"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog2(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Alert"),
    content: Text("Dragable Cancelled"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
