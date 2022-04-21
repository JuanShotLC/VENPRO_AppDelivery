import 'package:flutter/material.dart';
import 'package:app_delivery/src/colors/colors.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
//Commons Widgets
import 'package:app_delivery/src/features/presentation/commons_widgets/header_text.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(slivers: [
      SliverList(
          delegate: SliverChildListDelegate([
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              _topBar(context),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                alignment: Alignment.centerLeft,
                child: headerText('RECIENTES', grey, FontWeight.bold, 20.0),
              ),
              _sliderCategory(),
              _sliderCards(),
              _headers(context, "Popular this week", "show all"),
              _populares(context, 'assets/images/im1.png'),
              _populares(context, 'assets/images/im1.png'),
              _populares(context, 'assets/images/im1.png'),
              SizedBox(height: 10.0),
              _headers(context, "Collections", "show all"),
              _sliderOfertas()
            ],
          ),
        ),
      ]))
    ]));
  }
}

Widget _topBar(BuildContext context) {
  return Container(
    child: Row(
      children: [
        Container(
          width: 290.0,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(left: 25.0),
          decoration: BoxDecoration(
              border: Border.all(color: gris),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Icon(Icons.search, color: Colors.grey, size: 20.0),
              Text('¿De qué tienes ganas hoy?',
                  style: TextStyle(color: gris, fontSize: 17.0)),
            ],
          ),
        ),
        Container(
          width: 45.0,
          height: 45.0,
          margin: EdgeInsets.only(left: 10.0),
          child: IconButton(
            icon: Icon(Icons.location_on_outlined,
                color: Colors.black, size: 30.0),
            onPressed: () {},
          ),
        )
      ],
    ),
  );
}

Widget _sliderCards() {
  return Container(
    height: 350.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _card(context);
            });
      },
    ),
  );
}

Widget _sliderCategory() {
  return Container(
    height: 110.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _card2(context);
            });
      },
    ),
  );
}

Widget _card(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(5.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            'assets/images/pizza2.jpg',
            fit: BoxFit.cover,
            width: 360.0,
            height: 150.0,
          ),
        ),
      ],
    ),
  );
}

Widget _card2(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(5.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            'assets/images/pizza2.jpg',
            fit: BoxFit.cover,
            width: 65.0,
            height: 64.0,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5.0),
          child: Text('Pizza',
              style: TextStyle(color: Colors.black, fontSize: 12.0)),
        )
      ],
    ),
  );
}

Widget _headers(BuildContext context, String TextHeader, String TextAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: headerText(TextHeader, grey, FontWeight.bold, 20.0),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(
              TextAction,
              style: TextStyle(
                  color: grey, fontWeight: FontWeight.w500, fontSize: 15.0),
            ),
            Icon(Icons.play_arrow)
          ],
        ),
      ),
    ],
  );
}

Widget _populares(BuildContext context, String foto) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child:
                  Image.asset(foto, width: 80, height: 80, fit: BoxFit.cover),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText(
                          "Andy & Cindy's Diner", grey, FontWeight.bold, 17.0)),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      '87 Bosford Circle Apt',
                      style: TextStyle(
                          color: greed,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: amarillo, size: 16.0),
                      Text(
                        '4.5',
                        style: TextStyle(
                            color: greed,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Text(
                          '(255 ratings)',
                          style: TextStyle(
                              color: greed,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 35.0),
                        width: 110.0,
                        height: 18.0,
                        child: RaisedButton(
                          elevation: 0.5,
                          shape: StadiumBorder(),
                          color: Theme.of(context).accentColor,
                          onPressed: () {},
                          child: Text(
                            'Delivery',
                            style: TextStyle(fontSize: 11.0, color: bgBotton),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}

Widget _sliderOfertas() {
  return Container(
    height: 180.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _cardOfertas(context);
            });
      },
    ),
  );
}

Widget _cardOfertas(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            'assets/images/im1.png',
            width: 300.0,
            height: 150.0,
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  );
}
