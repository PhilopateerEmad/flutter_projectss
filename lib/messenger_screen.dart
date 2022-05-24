import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        titleSpacing: 20,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 21,
              //backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                'assets/images/MyProfile_2.jpg',
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.grey[700],
              child: const Icon(
                Icons.camera_alt_rounded,
                color: Colors.white,
                size: 22,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.grey[700],
              child: const Icon(
                Icons.edit,
                color: Colors.white,
                size: 22,
              ),
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 13),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    50,
                  ),
                  color: Colors.grey[700],
                ),
                padding: EdgeInsets.all(12.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 15,
                  ),
                  itemCount: 10,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 15,
                      ),
                  itemCount: 10)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                radius: 32,
                //backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  'assets/images/MyProfile.jpg',
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 1,
                  end: 1,
                ),
                child: CircleAvatar(
                  radius: 9.7,
                  backgroundColor: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 3,
                  end: 3,
                ),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ashraf',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'etkalem yala 3edl yala enta yad mn assuit yala wla men fen yal',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        width: 7,
                        height: 7,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Text('02:00 pm',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

  Widget buildStoryItem() => Container(
        width: 64,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                  radius: 32,
                  //backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    'assets/images/MyProfile.jpg',
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 1,
                    end: 1,
                  ),
                  child: CircleAvatar(
                    radius: 9.7,
                    backgroundColor: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 3,
                    end: 3,
                  ),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Text(
              'Ashraf',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
}
