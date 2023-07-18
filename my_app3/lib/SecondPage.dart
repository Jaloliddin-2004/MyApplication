import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _oshish = 0;

  void _oshirish() {
    setState(() {
      _oshish++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 300,
          width: 500,
          decoration:
              BoxDecoration(image: DecorationImage(image: NetworkImage('https://img.teleflora.com/images/o_0/l_flowers:TEV24-2C,pg_6/w_368,h_460,cs_no_cmyk,c_pad/f_jpg,q_auto:eco,e_sharpen:200/flowers/TEV24-2C/FullOfLoveBouquetPM'))),
        ),
        Text(
          'Rose flower Bouquit',
          style: TextStyle(fontSize: 20),
        ),
        ListTile(
            title: Text(
              '24\$',
            ),
            trailing: ElevatedButton(
              onPressed: _oshirish,
              child: const Icon(Icons.add),
            )),
            Text('alkjflkdsjfkdsfk skfjldskjfdskncdskcjdsi sjjk kdjfkdjsiejlkckljelijiofj kljlckmslkcndsfsdcd dsefcz lsfsdfds',style: TextStyle(fontSize: 5,color: Colors.white60),)
      ],
    ));
  }
}
