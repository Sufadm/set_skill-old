import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Aggregation extends StatelessWidget {
  const Aggregation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                  'https://miro.medium.com/max/700/1*NOEORMhph8Nfu1F4patM3A.png'),
              Text(
                'ALL ABOUT AGGREGATION',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                'Aggregation refers to the process of gathering and summarizing data from multiple sources into a single result. It is a common operation in databases, data warehouses, and business intelligence systems.\n',
                style:
                    GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                'Here are some key points about aggregation:',
                style: GoogleFonts.lato(fontSize: 15),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                '1. Aggregation can be performed on numerical or categorical data. For numerical data, common aggregation functions include sum, average, maximum, minimum, and count. For categorical data, common aggregation functions include count, distinct count, and mode.\n\n2. Aggregation can be performed on raw data or pre-aggregated data. When aggregating raw data, it is important to group the data by a specific attribute, such as time, location, or product type. When aggregating pre-aggregated data, the aggregation function is typically applied to the pre-aggregated values.\n\n3. Aggregation is often used to generate reports and dashboards that provide insights into business performance. For example, a sales report might aggregate sales data by month, region, and product category to show which products are selling well in which regions.\n\n4. Aggregation can be performed using SQL, Python, R, or other programming languages. Many data visualization tools also have built-in aggregation functionality.\n\n5. Aggregation can be a computationally intensive operation, especially when dealing with large datasets. It is important to optimize the aggregation process to ensure that it runs efficiently.\n\n6. Aggregation can be used to identify trends and patterns in data, such as seasonality or changes over time. It can also be used to detect outliers or anomalies in the data.',
                style: GoogleFonts.lato(fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
