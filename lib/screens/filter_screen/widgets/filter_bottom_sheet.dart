import 'package:flutter/material.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  final List<Map<String, dynamic>> categories = [
    {"title": "Eggs", "selected": true},
    {"title": "Noodles & Pasta", "selected": false},
    {"title": "Chips & Crisps", "selected": false},
    {"title": "Fast Food", "selected": false},
  ];

  final List<Map<String, dynamic>> brands = [
    {"title": "Individual Collection", "selected": false},
    {"title": "Cocola", "selected": true},
    {"title": "Ifad", "selected": false},
    {"title": "Kazi Farmas", "selected": false},
  ];

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: .85,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        decoration: const BoxDecoration(
          color: Color(0xffF2F3F2),
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Column(
          children: [
            /// Header
            Row(
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close, size: 30),
                ),
                const Spacer(),
                const Text(
                  "Filters",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const SizedBox(width: 30),
              ],
            ),

            const SizedBox(height: 30),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    ...List.generate(
                      categories.length,
                      (index) => CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: const Color(0xff53B175),
                        value: categories[index]["selected"],
                        title: Text(
                          categories[index]["title"],
                          style: TextStyle(
                            color: categories[index]["selected"]
                                ? const Color(0xff53B175)
                                : Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            categories[index]["selected"] = value!;
                          });
                        },
                      ),
                    ),

                    const SizedBox(height: 30),

                    const Text(
                      "Brand",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    ...List.generate(
                      brands.length,
                      (index) => CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: const Color(0xff53B175),
                        value: brands[index]["selected"],
                        title: Text(
                          brands[index]["title"],
                          style: TextStyle(
                            color: brands[index]["selected"]
                                ? const Color(0xff53B175)
                                : Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            brands[index]["selected"] = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff53B175),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Apply Filter",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
