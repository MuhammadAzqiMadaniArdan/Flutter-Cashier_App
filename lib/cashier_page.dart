import 'package:flutter/material.dart';

class CashierPage extends StatefulWidget {
  const CashierPage({super.key});

  @override
  State<CashierPage> createState() => _CashierPageState();
}

class _CashierPageState extends State<CashierPage> {
  List<Map<String, dynamic>> products = [
    {
      "image": "assets/images/1.jpeg",
      "name": "Antangin",
      "price": 3000,
      "stock": 10,
    },
    {
      "image": "assets/images/2.png",
      "name": "Teh Sariwangi",
      "price": 5000,
      "stock": 10,
    },
    {
      "image": "assets/images/3.jpg",
      "name": "UltraMilk",
      "price": 9000,
      "stock": 10,
    },
    {
      "image": "assets/images/4.jpeg",
      "name": "Indomies",
      "price": 3500,
      "stock": 10,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Cashier App",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Text(
                  "Semoga Harimu Menyenangkan :) ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: SearchController(),
                  decoration: InputDecoration(
                      hintText: 'Cari Produk....',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 15,
                        );
                      },
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[300],
                          ),
                          child: Row(children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "${products[index]['image']}",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  bottomLeft: Radius.circular(8.0),
                                ),
                                color: Colors.grey[400],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                             Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${products[index]['name']}",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        "Stock : ${products[index]['stock']}",
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                        "${products[index]['price']}",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        );
                      }),
                ))
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.all(20),
              height: 55,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        // data : "Total (item)= Rp.0 (0)",
                        "Total (item)= Rp.0 (0)",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      )
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
