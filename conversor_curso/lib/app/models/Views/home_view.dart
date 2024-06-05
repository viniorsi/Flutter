import 'package:conversor_curso/app/components/currency_box.dart';
import 'package:conversor_curso/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();
  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText, fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 100,
              left: 30,
              right: 30,
              bottom: 20,
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                      75.0), // Define o raio da borda (75.0 para um círculo, considerando que a imagem tem 150x150)
                  child: Image.asset(
                    'assets/images/conversão_moedas.jpg',
                    width: 150,
                    height: 150,
                    fit: BoxFit
                        .cover, // Ajusta a imagem para cobrir o widget ClipRRect
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                ),
                CurrencyBox(
                  selectedItem: homeController.toCurrency,
                  controller: toText,
                  items: homeController.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeController.toCurrency = model!;
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CurrencyBox(
                  selectedItem: homeController.fromCurrency,
                  controller: fromText,
                  items: homeController.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeController.fromCurrency = model!;
                    });
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),
                    onPressed: () {
                      homeController.convert();
                    },
                    child: const Text('CONVERTER',
                        style: TextStyle(color: Colors.white))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
