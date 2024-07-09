
import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget
{
  const CurrencyConverterPage ({super.key});

  @override
  State<CurrencyConverterPage> createState()
  {
    return _CurrencyConverterMaterialPageState();
  }
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterPage> {

  double result = 0;
  final TextEditingController textEditingController = TextEditingController();


  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
          width: 4.0,
          style: BorderStyle.solid
      ),

    );


    return Scaffold(

      appBar: AppBar(
        backgroundColor:Colors.blueGrey,
        title: const Text('Currency Converter',
        ),
      ),
      backgroundColor: Colors.blueGrey,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(result.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            color: Colors.white
          ),
            ),

            Padding(
              padding:const EdgeInsets.all(8.0),
              child: TextField(

                controller: textEditingController,

                    style: const TextStyle(
                      color: Colors.black
                    ),

                decoration: const InputDecoration(

                   filled: true,
                   fillColor: Colors.white,


                   prefixIcon: Icon(Icons.monetization_on_outlined),
                   prefixIconColor: Colors.black,


                   hintText:'ENTER THE AMOUNT IN USD',
                   hintStyle: TextStyle(
                    color: Colors.black
                   ),

                   focusedBorder: border,
                   enabledBorder: border,

                  ),
                  keyboardType:const  TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              ),
            Padding(
              padding:const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: ()
                  {

                    setState(() {
                      result =double.parse(textEditingController.text) * 83;
                    });


                 },
                  style:TextButton.styleFrom
                    (
                    shape:const  RoundedRectangleBorder(),
                    backgroundColor: Colors.black,
                    foregroundColor:Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                  ),

                  child: const Text('Click Here')
              ),
            ),

          ],
        ),
      ),
    );
  }
}

