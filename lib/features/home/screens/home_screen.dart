import 'package:amazon/constants/global_variable.dart';
import 'package:amazon/features/home/widgets/adress_box.dart';
import 'package:amazon/features/home/widgets/carousel_image.dart';
import 'package:amazon/features/home/widgets/deal_of_the_day.dart';
import 'package:amazon/features/home/widgets/top_categories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(left: 15),
                  child: Material(
                    borderRadius: BorderRadius.circular(7),
                    elevation: 1,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(left: 6),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 23,
                            ),
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(top: 10),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                          borderSide: BorderSide(
                            color: Colors.black38,
                            width: 1,
                          ),
                        ),
                        hintText: 'Search Amazon.in',
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 42,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const Icon(
                  Icons.mic,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AdressBox(),
            const SizedBox(
              height: 10,
            ),
            const TopCategories(),
            const SizedBox(
              height: 10,
            ),
            const CarouselImage(),
            // const SizedBox(
            //   height: 10,
            // ),
            const DealOfTheDay(),
            Image.network(
              'https://plus.unsplash.com/premium_photo-1681566925246-cc584a44d7fe?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fG1hY2Jvb2slMjBmb3IlMjBzYWxlfGVufDB8fDB8fHww',
              height: 245,
              fit: BoxFit.fitHeight,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
              alignment: Alignment.topCenter,
              child: const Text(
                '\$999',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
              child: const Text(
                'Macbook Air ',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    'https://plus.unsplash.com/premium_photo-1683141153072-b0a16ee4efe8?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fG1hY2Jvb2slMjBmb3IlMjBzYWxlfGVufDB8fDB8fHww',
                    fit: BoxFit.fitWidth,
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.network(
                    'https://plus.unsplash.com/premium_photo-1681566925324-ee1e65d9d53e?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bWFjYm9vayUyMGZvciUyMHNhbGV8ZW58MHx8MHx8fDA%3D',
                    fit: BoxFit.fitWidth,
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.network(
                    'https://plus.unsplash.com/premium_photo-1683141153072-b0a16ee4efe8?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fG1hY2Jvb2slMjBmb3IlMjBzYWxlfGVufDB8fDB8fHww',
                    fit: BoxFit.fitWidth,
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.network(
                    'https://plus.unsplash.com/premium_photo-1681566925324-ee1e65d9d53e?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bWFjYm9vayUyMGZvciUyMHNhbGV8ZW58MHx8MHx8fDA%3D',
                    fit: BoxFit.fitWidth,
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
              alignment: Alignment.topLeft,
              child: Text(
                'See all Deals',
                style: TextStyle(color: Colors.cyan[800]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
