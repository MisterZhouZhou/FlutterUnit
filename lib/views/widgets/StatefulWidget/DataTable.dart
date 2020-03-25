import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020-03-21
/// contact me by email 1981462002@qq.com
/// 说明:

class CustomDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(columns: [
      DataColumn(label: Text('id')),
      DataColumn(label: Text('名称')),
      DataColumn(label: Text('类型')),
      DataColumn(label: Text('子数目')),
    ], rows: [
      DataRow(cells: [
        DataCell(Text('101')),
        DataCell(Text('DataTable')),
        DataCell(Text('StatelessWidget')),
        DataCell(Text('n')),
      ]),
      DataRow(cells: [
        DataCell(Text('1')),
        DataCell(Text('Container')),
        DataCell(Text('StatelessWidget')),
        DataCell(Text('1')),
      ]),
      DataRow(cells: [
        DataCell(Text('98')),
        DataCell(Text('Wrap')),
        DataCell(Text('MultiChildRenderObjectWidget')),
        DataCell(Text('n')),
      ]),
    ]);
  }
}

class SortDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(sortColumnIndex: 0, sortAscending: true, columns: [
      DataColumn(
          label: Text('id'),
          numeric: false,
          onSort: (int columnIndex, bool ascending) {
            print('$columnIndex----$ascending');
          }),
      DataColumn(label: Text('名称')),
      DataColumn(label: Text('类型')),
      DataColumn(label: Text('子数目')),
    ], rows: [
      DataRow(cells: [
        DataCell(Text('101')),
        DataCell(Text('DataTable')),
        DataCell(Text('StatelessWidget')),
        DataCell(Text('n')),
      ]),
      DataRow(selected: true, cells: [
        DataCell(Text('1')),
        DataCell(Text('Container'), showEditIcon: true,onTap: (){

        }),
        DataCell(Text('StatelessWidget')),
        DataCell(Text('1')),
      ]),
      DataRow(cells: [
        DataCell(Text('98')),
        DataCell(Text('Wrap')),
        DataCell(Text('MultiChildRenderObjectWidget')),
        DataCell(Text('n')),
      ]),
    ]);
  }
}
