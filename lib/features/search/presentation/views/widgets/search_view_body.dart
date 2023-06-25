import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/core/widget/default_form_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget
{
  final searchController = TextEditingController();

   SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            DefaultFormField(
              controller: searchController,
              type: TextInputType.name,
              validate: (String? value){},
              label: 'Search',
              prefix: Icons.search,
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Search Result',
                  style: Styles.textStyle18,
                ),
              ],
            ),
            const SearchResultListView(),
          ],
        ),
      ),
    );
  }
}