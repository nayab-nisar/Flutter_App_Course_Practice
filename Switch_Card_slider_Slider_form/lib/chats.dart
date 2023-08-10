import 'package:flutter/material.dart';

Color c1 = Colors.black,
    c2 = Colors.grey,
    c3 = Colors.grey,
    c4 = Colors.grey,
    c5 = Colors.grey;

class MyChat extends StatefulWidget {
  const MyChat({Key? key}) : super(key: key);

  @override
  State<MyChat> createState() => _Chat();
}

class _Chat extends State<MyChat> {
  Widget build(BuildContext context) {
    int currentIndex = 0;
    final PageController controller = PageController();

    List<String> images = [
      "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/4534200/pexels-photo-4534200.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/4101555/pexels-photo-4101555.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2418664/pexels-photo-2418664.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/2618804/pexels-photo-2618804.jpeg?auto=compress&cs=tinysrgb&w=600"
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 300,
          width: double.infinity,
          child: PageView.builder(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index % images.length;
                changeColor(index);
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    images[index % images.length],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [buildIndicator()],
        ),
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       IconButton(
        //         onPressed: () {
        //           controller.jumpToPage(currentIndex - 1);
        //         },
        //         icon: Icon(Icons.arrow_back),
        //       ),
        //       IconButton(
        //         onPressed: () {
        //           controller.jumpToPage(currentIndex + 1);
        //         },
        //         icon: Icon(Icons.arrow_forward),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
    // );
  }

  Widget buildIndicator() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Row(
        children: [
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: c1,
            ),
          ),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: c2,
            ),
          ),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: c3,
            ),
          ),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: c4,
            ),
          ),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: c5,
            ),
          ),
        ],
      ),
    );
  }
}

void changeColor(int ind) {
  if (ind == 0) {
    c1 = Colors.black;

    c2 = Colors.grey;
    c3 = Colors.grey;
    c4 = Colors.grey;
    c5 = Colors.grey;
  }

  if (ind == 1) {
    c2 = Colors.black;

    c1 = Colors.grey;
    c3 = Colors.grey;
    c4 = Colors.grey;
    c5 = Colors.grey;
  }
}
