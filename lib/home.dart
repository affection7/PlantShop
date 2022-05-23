import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_plant_shop_ui/detail.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> _products = [
    Product(
      image: '1.png',
      title: 'Амариллис',
      desc:
          'ОСВЕЩЕНИЕ: светолюбивое. Подойдут окна юго-западной или юго-восточной ориентации.'
          ' ВЛАЖНОСТЬ: не требовательное растение.'
          ' ТЕМПЕРАТУРА: летом 18-23°C. В период покоя 10-13°C.'
          ' ПОЛИВ: постоянно увеличивается по мере роста и развития. ВОДА НЕ ДОЛЖНА ПОПАДАТЬ НА ЛУКОВИЦУ',
    ),
    Product(
      image: '3.jpg',
      title: 'Орхидея-паук (Брассия)',
      desc: 'ОСВЕЩЕНИЕ: яркий рассеянный свет с западной или восточной стороны.'
          ' ВЛАЖНОСТЬ: чем выше влажность, тем лучше самочувствие орхидеи (помодет увлажнитель воздуха и частое опрыскивание).'
          ' ТЕМПЕРАТУРА: идеальная температура 23-25°C, так же разрешена комнатная.'
          ' ПОЛИВ: метод погружения горшка в сосуд с водой на 20-30 минут (НЕЛЬЗЯ ДОПУСКАТЬ СМОРЩИВАНИЯ ПСЕВДОБУЛЬБ)',
    ),
    Product(
      image: '6.png',
      title: 'Пеларгония (Герань)',
      desc: 'ОСВЕЩЕНИЕ: для цветения нужен солнечный свет.'
          ' ВЛАЖНОСТЬ: желательно опрыскивать утром или вечером!'
          ' ТЕМПЕРАТУРА: выдерживает кратковременное похолодание до +1°C.'
          ' ПОЛИВ: летом - обильный, зимой лучше поливать умеренно.'
          ' ПОДКОРМКА: раз в 2 недели жидким минеральным удобрением'
          ' ОБРЕЗКА: ранней весной до начала вегетационного периода.',
    ),
    Product(
      image: '2.jpg',
      title: 'Мирт',
      desc: 'ОСВЕЩЕНИЕ: светолюбивое растение.'
          ' ВЛАЖНОСТЬ: любит регулярное опрыскивание тёплой водой.'
          ' ТЕМПЕРАТУРА: летом - температура окружающей среды. Зимой не выше 10°C.'
          ' ПОЛИВ: поливать мягкой водой, поддерживая влажность почвы.'
          ' УДОБРЕНИЕ: с марта по август удобряют раз в месяц комплексным минеральным удобрением.'
          ' ОБРЕЗКА: должна быть регулярной и планомерной.',
    ),
    Product(
      image: '4.jpg',
      title: 'Бальзамин',
      desc:
          'ОСВЕЩЕНИЕ: неприхотлив, но для постоянно и обильного цветения нужен яркий свет хотя бы несколько часов.'
          ' ВЛАЖНОСТЬ: влаголюбивое растение, летом полив обильный (НЕ ДОПУСКАТЬ ПЕРЕСЫХАНИЯ ЗЕМЛЯНОГО КОМА).'
          ' ТЕМПЕРАТУРА: обычная комнатная температура (зимой не ниже 12-14°C).'
          ' ПОЛИВ: поливать мягкой водой, поддерживая влажность почвы.'
          ' УДОБРЕНИЕ: подкармливать с весны до осени каждые 2 недели минеральным удобрением для цветущих растений.',
    ),
    Product(
      image: '5.jpg',
      title: 'Сенполия (фиалка)',
      desc:
          'ОСВЕЩЕНИЕ: много света, но никаких солнечных лучей (восточные или западные окна).'
          ' ВЛАЖНОСТЬ: любит повышенную влажность (ОПРЫСКИВАТЬ ЛИСТЬЯ НЕЛЬЗЯ).'
          ' ТЕМПЕРАТУРА: для взрослой фиалки 20-24°C, для молодых растений 23-25°C .'
          ' ПОЛИВ: отстоянная в открытой посуде водопроводная вода (вода не должна попадать на листья и в центр розетки).'
          ' УДОБРЕНИЕ: примерно через 1.5 месяца после пересадки.'
          ' ОБРЕЗКА: должна быть регулярной и планомерной.',
    ),
  ];

  final List<Map<String, dynamic>> _plantInform = [
    {
      'image': '1.png',
      'title': 'Амариллис',
      'desc': 'ОСВЕЩЕНИЕ: светолюбивое. Подойдут окна юго-западной или юго-восточной ориентации.'
          ' ВЛАЖНОСТЬ: не требовательное растение.'
          ' ТЕМПЕРАТУРА: летом 18-23°C. В период покоя 10-13°C.'
          ' ПОЛИВ: постоянно увеличивается по мере роста и развития. ВОДА НЕ ДОЛЖНА ПОПАДАТЬ НА ЛУКОВИЦУ',
    },
    {
      'image': '3.jpg',
      'title': 'Орхидея-паук (Брассия)',
      'desc': 'ОСВЕЩЕНИЕ: яркий рассеянный свет с западной или восточной стороны.'
          ' ВЛАЖНОСТЬ: чем выше влажность, тем лучше самочувствие орхидеи (помодет увлажнитель воздуха и частое опрыскивание).'
          ' ТЕМПЕРАТУРА: идеальная температура 23-25°C, так же разрешена комнатная.'
          ' ПОЛИВ: метод погружения горшка в сосуд с водой на 20-30 минут (НЕЛЬЗЯ ДОПУСКАТЬ СМОРЩИВАНИЯ ПСЕВДОБУЛЬБ)',
    },
    {
      'image': '6.png',
      'title': 'Пеларгония (Герань)',
      'desc': 'ОСВЕЩЕНИЕ: для цветения нужен солнечный свет.'
          ' ВЛАЖНОСТЬ: желательно опрыскивать утром или вечером!'
          ' ТЕМПЕРАТУРА: выдерживает кратковременное похолодание до +1°C.'
          ' ПОЛИВ: летом - обильный, зимой лучше поливать умеренно.'
          ' ПОДКОРМКА: раз в 2 недели жидким минеральным удобрением'
          ' ОБРЕЗКА: ранней весной до начала вегетационного периода.',
    },
    {
      'image': '2.jpg',
      'title': 'Мирт',
      'desc': 'ОСВЕЩЕНИЕ: светолюбивое растение.'
          ' ВЛАЖНОСТЬ: любит регулярное опрыскивание тёплой водой.'
          ' ТЕМПЕРАТУРА: летом - температура окружающей среды. Зимой не выше 10°C.'
          ' ПОЛИВ: поливать мягкой водой, поддерживая влажность почвы.'
          ' УДОБРЕНИЕ: с марта по август удобряют раз в месяц комплексным минеральным удобрением.'
          ' ОБРЕЗКА: должна быть регулярной и планомерной.',
    },
    {
      'image': '4.jpg',
      'title': 'Бальзамин',
      'desc': 'ОСВЕЩЕНИЕ: неприхотлив, но для постоянно и обильного цветения нужен яркий свет хотя бы несколько часов.'
          ' ВЛАЖНОСТЬ: влаголюбивое растение, летом полив обильный (НЕ ДОПУСКАТЬ ПЕРЕСЫХАНИЯ ЗЕМЛЯНОГО КОМА).'
          ' ТЕМПЕРАТУРА: обычная комнатная температура (зимой не ниже 12-14°C).'
          ' ПОЛИВ: поливать мягкой водой, поддерживая влажность почвы.'
          ' УДОБРЕНИЕ: подкармливать с весны до осени каждые 2 недели минеральным удобрением для цветущих растений.',
    },
    {
      'image': '5.jpg',
      'title': 'Сенполия (фиалка)',
      'desc': 'ОСВЕЩЕНИЕ: много света, но никаких солнечных лучей (восточные или западные окна).'
          ' ВЛАЖНОСТЬ: любит повышенную влажность (ОПРЫСКИВАТЬ ЛИСТЬЯ НЕЛЬЗЯ).'
          ' ТЕМПЕРАТУРА: для взрослой фиалки 20-24°C, для молодых растений 23-25°C .'
          ' ПОЛИВ: отстоянная в открытой посуде водопроводная вода (вода не должна попадать на листья и в центр розетки).'
          ' УДОБРЕНИЕ: примерно через 1.5 месяца после пересадки.'
          ' ОБРЕЗКА: должна быть регулярной и планомерной.',
    },
  ];

  List<Map<String, dynamic>> _foundPlant = [];
  TextEditingController editingController = TextEditingController();

  @override
  initState() {
    _foundPlant = _plantInform;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _plantInform;
    } else {
      results = _plantInform
          .where((user) => user['title']
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundPlant = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18, left: 14, right: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Это я - твой помощник',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Icon(
                IconData(0xe0ef, fontFamily: 'MaterialIcons'),
                size: 40,
                color: Color.fromARGB(255, 31, 106, 85),
              )
            ],
          ),
          Text(
            'по уходу за цветами и растениями',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 20, 109, 91)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 35),
            child: Row(
              children: [_searchBox()],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
              physics: BouncingScrollPhysics(),
              crossAxisCount: 4,
              itemCount: _foundPlant.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                    onTap: () {
                      FocusScope.of(context).requestFocus(new FocusNode());
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            product: _products[index],
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Stack(
                              children: [
                                Center(
                                  child: Image.asset(
                                    'assets/images/${_foundPlant[index]['image']}',
                                    width: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '${_foundPlant[index]['title']}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ));
              },
              staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
            ),
          )
        ],
      ),
    );
  }

  Widget _searchBox() {
    return Expanded(
      child: TextField(
        onChanged: (value) {
          _runFilter(value);
        },
        controller: editingController,
        decoration: InputDecoration(
          hintText: 'Поиск',
          prefixIcon: Icon(
            Icons.search,
            size: 30,
          ),
          filled: true,
          fillColor: Color.fromARGB(255, 169, 225, 200),
          contentPadding: EdgeInsets.all(15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}

class Product {
  String title;
  String image;
  String desc;

  Product({this.title, this.image, this.desc});
}
