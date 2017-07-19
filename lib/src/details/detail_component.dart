// Copyright (c) 2017, erikrahtjen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import 'package:angular_components/angular_components.dart';
import 'package:route_params_failure/src/todo_list/todo_list_service.dart';

@Component(
  selector: 'todo-details',
  styleUrls: const ['detail_component.css'],
  templateUrl: 'detail_component.html',
  directives: const [
    CORE_DIRECTIVES,
    materialDirectives,
  ],
  providers: const [TodoListService],
)
class DetailComponent implements OnInit {
  final TodoListService todoListService;
  final RouteParams _routeParams;

  DetailComponent(this.todoListService, this._routeParams);

  @override
  Future<Null> ngOnInit() async {
    var _id = _routeParams.get('id'); //This should return a string, but it does not.
    print("--$_id--");
    if (_id != null) {
      int id = int.parse(_id, onError: (e) {
        print(e);
      });
      print(id);
    }
  }
}
