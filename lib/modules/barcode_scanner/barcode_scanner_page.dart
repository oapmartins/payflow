import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class BarcodeScannerPage extends StatelessWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Escaneie o código de barras do boleto',
          style: TextStyles.buttonBackground,
        ),
        leading: const BackButton(
          color: AppColors.background,
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.black,
          )),
          Expanded(flex: 2, child: Container()),
          Expanded(
            child: Container(
              color: Colors.black,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 56,
        child: Row(
          children: [
            Expanded(
                child: LabelButton(
                    onPressed: () {}, label: 'Inserir código do boleto')),
            dividerVerticalWidget(),
            Expanded(
                child: LabelButton(
                    onPressed: () {}, label: 'Adicionar da Galeria')),
          ],
        ),
      ),
    );
  }
}
