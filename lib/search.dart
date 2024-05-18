import 'package:flutter/material.dart';
import 'package:urbanbuy/constrait.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Padding(padding: EdgeInsets.only(right: 10, left: 10)),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                      color: KSecondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(color: KPrimaryColor, blurRadius: 2)
                      ]),
                  child: const TextField(
                    decoration: InputDecoration(
                      fillColor: KPrimaryColor,
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      suffixIcon: Icon(Icons.filter_list_outlined),
                    ),
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ],
    );
  }
}
