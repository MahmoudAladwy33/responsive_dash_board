import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/features/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
        ],
      ),
    );
  }
}
