// Copyright (c) 2017, erikrahtjen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import 'package:angular_components/angular_components.dart';

import 'todo_list_service.dart';

@Component(
  selector: 'todo-list',
  styleUrls: const ['todo_list_component.css'],
  templateUrl: 'todo_list_component.html',
  directives: const [
    CORE_DIRECTIVES,
    materialDirectives,
  ],
  providers: const [TodoListService],
)
class TodoListComponent implements OnInit {
  final TodoListService todoListService;
  final Router _router;

  List<String> items = [];
  String newTodo = '';

  TodoListComponent(this.todoListService, this._router);

  @override
  Future<Null> ngOnInit() async {
    items = await todoListService.getTodoList();
  }

  void onClick(int i) {
    _router.navigate(['Details', {'id' : i}]);
  }

  void add() {
    items.add(newTodo);
    newTodo = '';
  }
  String remove(int index) => items.removeAt(index);
  void onReorder(ReorderEvent e) =>
      items.insert(e.destIndex, items.removeAt(e.sourceIndex));
}
