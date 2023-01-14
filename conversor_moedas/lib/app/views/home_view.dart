import 'package:conversor_moedas/app/components/currency_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 100, bottom: 20),
        child: Column(
          children: [
            Image.asset(
              'assets/imagens/conversor.png',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 50,),
            CurrencyBox(),
            SizedBox(height: 10,),
            CurrencyBox(),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: () {},
              child: Text('CONVERTER'),
            )
          ],
        ),
      ),
    ));
  }
}
