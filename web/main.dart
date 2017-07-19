// Copyright (c) 2017, erikrahtjen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular2/platform/browser.dart';

import 'package:angular2/platform/common.dart';
import 'package:angular2/router.dart';
import 'package:route_params_failure/app_component.dart';

void main() {
  bootstrap(AppComponent, [
    ROUTER_PROVIDERS,
    provide(APP_BASE_HREF, useValue: '/'),
    provide(LocationStrategy, useClass: HashLocationStrategy)
  ]);
}
