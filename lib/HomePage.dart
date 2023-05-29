

import 'package:flutter/material.dart';
import 'package:shopxappppa/Cart.dart';
import 'package:shopxappppa/Map.dart';
import 'package:shopxappppa/profile.dart';
import 'package:shopxappppa/ProductListing.dart';
import 'package:shopxappppa/Notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'ShopX',
          style: TextStyle(
            fontFamily: 'Cursive',
            fontSize: 35,
            color: Colors.white,
          ),
        ),
        toolbarHeight: 80,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.lightBlue,
              Colors.cyan,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Expanded(child: _buildProductSquare()),
                Expanded(child: _buildProductSquare()),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Expanded(child: _buildProductSquare()),
                Expanded(child: _buildProductSquare()),
              ],
            ),
            SizedBox(height: 20),
            //_buildProductDetails(),
            Expanded(child: Container()), // Placeholder for additional content
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationPage()),
                );
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Notifications',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: IconButton(
                onPressed: () {
                  // Handle home icon click
                },
                icon: Icon(Icons.home, color: Colors.white),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MapPage()));
              },
              child: IconButton(
                onPressed: () {
                  // Handle map icon click
                },
                icon: Icon(Icons.map, color: Colors.white),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
              },
              child: IconButton(
                onPressed: () {
                  // Handle cart icon click
                },
                icon: Icon(Icons.shopping_cart, color: Colors.white),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              child: IconButton(
                onPressed: () {
                  // Handle profile icon click
                },
                icon: Icon(Icons.person, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductSquare() {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.white,
      child: Center(
        child: Text(
          'Product Image',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}


Widget _buildProductSquare(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProductListingPage()),
      );
    },
    child: Container(
      width: double.infinity,
      height: 200,
      color: Colors.white,
      child: Center(
        child: Text(
          'Product Image',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}


