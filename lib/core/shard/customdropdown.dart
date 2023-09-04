import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';

class CustomdropdownSearch extends StatefulWidget {
  final String title;
  final List<SelectedListItem> listdata;
  final TextEditingController dropDownSelectedname;
  final TextEditingController dropDownSelectedid;
  const CustomdropdownSearch(
      {super.key,
      required this.title,
      required this.listdata,
      required this.dropDownSelectedname,
      required this.dropDownSelectedid});

  @override
  State<CustomdropdownSearch> createState() => _CustomdropdownSearchState();
}

class _CustomdropdownSearchState extends State<CustomdropdownSearch> {
  void showDropdownSearch() {
    DropDownState(
      DropDown(
        isDismissible: true,
        bottomSheetTitle: Text(
          widget.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        submitButtonChild: const Text(
          'Done',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        data: widget.listdata ?? [],
        selectedItems: (List<dynamic> selectedList) {
          SelectedListItem selectedListItem = selectedList[0];
          widget.dropDownSelectedname.text = selectedListItem.name;
          widget.dropDownSelectedid.text = selectedListItem.value!;
          print("name"+widget.dropDownSelectedname.text);
          print("id"+widget.dropDownSelectedid.text);
        },
      ),
    ).showModal(context);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.dropDownSelectedname,
      cursorColor: Colors.black,
      onTap: () {
        FocusScope.of(context).unfocus();
        showDropdownSearch();
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.black12,
        contentPadding:
            const EdgeInsets.only(left: 8, bottom: 0, top: 0, right: 15),
        hintText: widget.dropDownSelectedname.text == ""
            ? widget.title
            : widget.dropDownSelectedname.text,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
