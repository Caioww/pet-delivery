import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:petdelivery/screens/details.dart';
import 'package:petdelivery/util/data.dart';
import 'package:petdelivery/widgets/badge.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchControl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pet Delivery",
        ),
        centerTitle: true,
        actions: <Widget>[
          Center(
            child: IconBadge(
              icon: Feather.getIconData("shopping-cart"),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15),
        children: <Widget>[
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Card(
              elevation: 6.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "O que você está procurando?",
                    prefixIcon: Icon(
                      Feather.getIconData("search"),
                      color: Colors.black,
                    ),
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                  maxLines: 1,
                  controller: _searchControl,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              "Categorias",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: furnitures.length,
              itemBuilder: (BuildContext context, int index) {
                Map furniture = furnitures[index];

                return Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Details();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 120,
                      width: 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            furniture['name'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "${furniture["img"]}",
                              height: 160,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 0.0, right: 10.0),
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
              child: Image.asset(
                "assets/petshop.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Casas de Rações",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w800,
                ),
              ),
              FlatButton(
                child: Text(
                  "Veja mais",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 10),
          ListTile(
            leading: SizedBox(
              height: 50.0,
              width: 30.0, // fixed width and height
              child: Image.asset("assets/casasracao.png"),
            ),
            title: Text('Casa de Rações Bocaina'),
          ),
          ListTile(
            leading: SizedBox(
              height: 50.0,
              width: 30.0, // fixed width and height
              child: Image.asset("assets/casasracao.png"),
            ),
            title: Text('Casa de Ração Nova América'),
          ),
          ListTile(
            leading: SizedBox(
              height: 50.0,
              width: 30.0, // fixed width and height
              child: Image.asset("assets/casasracao.png"),
            ),
            title: Text('Calopdog Casa de Ração'),
          ),
        ],
      ),
    );
  }
}
