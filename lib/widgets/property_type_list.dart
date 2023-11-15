import 'package:airbnb_clone/shared/theme/colors.dart';
import 'package:flutter/material.dart';

class PropertyTypeList extends StatefulWidget {
  const PropertyTypeList({super.key});

  @override
  State<PropertyTypeList> createState() => _PropertyTypeListState();
}

class _PropertyTypeListState extends State<PropertyTypeList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    final propertyTypes = <Map<String, dynamic>>[
      {'type': 'Hotel', 'icon': Icons.hotel},
      {'type': 'Apartment', 'icon': Icons.apartment},
      {'type': 'BnB', 'icon': Icons.bedroom_child},
      {'type': 'Villa', 'icon': Icons.villa},
      {'type': 'Resort', 'icon': Icons.holiday_village},
    ];
    return SizedBox(
      height: 56,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: propertyTypes.length,
        itemBuilder: (context, index) {
          return Container(
            width: size.width * 0.2,
            margin: const EdgeInsets.only(
              right: 4,
              left: 4,
              top: 4,
            ),
            child: Column(
              children: [
                Icon(
                  propertyTypes[index]['icon'] as IconData,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  propertyTypes[index]['type'] as String,
                  style: textTheme.bodySmall!.copyWith(
                    fontWeight: index == selectedIndex
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
                if (index == selectedIndex)
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    height: 2,
                    width: 64,
                    color: appBlack,
                  )
                else
                  const SizedBox(),
              ],
            ),
          );
        },
      ),
    );
  }
}
