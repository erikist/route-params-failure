// Copyright (c) 2017, erikrahtjen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular2/router.dart';

import 'package:route_params_failure/src/details/detail_component.dart';
import 'src/todo_list/todo_list_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components
@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, ROUTER_DIRECTIVES],
  providers: const [materialProviders],
)
@RouteConfig(const [
  const Route(path: '/todos', name: 'TodoList', component: TodoListComponent, useAsDefault: true),
  const Route(path: '/todos/:id', name: 'Details', component: DetailComponent),
])
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
