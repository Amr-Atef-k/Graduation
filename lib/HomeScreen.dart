import 'package:flutter/material.dart';
import 'package:gradution_project/infoPage.dart';
import 'package:gradution_project/product_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomindex = 0;
  int? selectedindex = 0;
  List categories = [
    'All',
    'Clothes',
    'Furniture',
    'Electronics',
    'Food',
    'Sport',
    'Beauty'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white60,
          leading: Padding(
            padding: EdgeInsets.only(left: 7.0),
            child: InkResponse(
              onTap: () {},
              child: Icon(
                Icons.menu,
                size: 30.0,
                color: Colors.black,
              ),
            ),
          ),
          title: Text(
            'Online Shopping',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: InkResponse(
                onTap: () {},
                child: Icon(
                  Icons.shopping_cart,
                  size: 30.0,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10),
              child: InkResponse(
                onTap: () {},
                child: Icon(
                  Icons.notifications,
                  size: 30.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: bottomindex,
          onTap: (index) => setState(() => bottomindex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favotites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp),
              label: 'profile',
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'search for a product',
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 8, right: 10),
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedindex = index;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: index == selectedindex
                            ? Colors.blueGrey
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        categories[index],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: productList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3.5 / 5,
                  crossAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          InkWell(
                              onTap: () {
                               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>infoPage(productModel: productList[index],)));
                              },
                              child: Image.network(
                                productList[index].image!,
                              )),
                          InkWell(
                            //makes anything clickable
                            onTap: () {
                              setState(() {
                                productList[index].isFavorite =
                                    !productList[index].isFavorite!;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Icon(
                                productList[index].isFavorite == true
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(productList[index].name!),
                      Text(productList[index].price.toString()),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
