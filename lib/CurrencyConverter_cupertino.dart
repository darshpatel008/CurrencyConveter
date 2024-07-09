import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget
{
  const CurrencyConverterCupertinoPage ({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState()
  {
    return _CurrencyConverterCupertinoPageState();
  }
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {

  double result = 0;
  final TextEditingController textEditingController = TextEditingController();


  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }


@override
Widget build(BuildContext context)
{
   return  CupertinoPageScaffold(

     backgroundColor: CupertinoColors.lightBackgroundGray,
     navigationBar: const CupertinoNavigationBar(
       backgroundColor: CupertinoColors.lightBackgroundGray,
       middle: Text('Currency Converter'),
     ),


     child: Center(
       child: Padding(
       padding: const EdgeInsets.all(10),

         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,

           children: [
          Text('INR ${result!=0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0) }',
          style: const TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: CupertinoColors.white,
          ),
          ),
             const SizedBox(height: 10),

             CupertinoTextField(
               controller: textEditingController,
               style:const  TextStyle(
                 color: CupertinoColors.black,
               ),

               decoration: BoxDecoration(
                 color: CupertinoColors.white,
                 borderRadius: BorderRadius.circular(5),
                 border: Border.all(),
               ),

               placeholder: 'please enter the amount in USD',
               prefix: const  Icon(CupertinoIcons.money_dollar),
               keyboardType: const TextInputType.numberWithOptions(
                 decimal: true,
               )
             ),
             const SizedBox(height: 10),
             CupertinoButton(
                 onPressed:
                     (){
                   setState(()
                   {
                     result =double.parse(textEditingController.text) * 83;
                   });
                 },

                 child: const Text('CLICK HERE'),

                 color: CupertinoColors.black,



                )

           ],
         ),
   )
   )

   );


}
}