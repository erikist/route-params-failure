`RouteParams.get` is sometimes returning a non string. This is a problem. In order to run this and see the problem follow these steps:

```
git clone git@github.com:erikist/route-params-failure.git
cd route-params-failure
pub get
pub serve
```

Then navigate to `localhost:8080` in Chrome (have not tested in dartium). Click the word that says first when the app compiles. Observe the console when doing this and you will see the following output:
```
js_primitives.dart:30 --0--
html_dart2js.dart:3558 EXCEPTION: Invalid argument: 0
STACKTRACE: 
Invalid argument: 0
    at Object.wrapException (http://localhost:8080/main.dart.js:3933:17)
    at Object.checkString (http://localhost:8080/main.dart.js:3926:17)
    at Object.Primitives_parseInt (http://localhost:8080/main.dart.js:3590:9)
    at http://localhost:8080/main.dart.js:62224:29
    at _wrapJsFunctionForAsync_closure.$protected (http://localhost:8080/main.dart.js:6560:15)
    at _wrapJsFunctionForAsync_closure.dart._wrapJsFunctionForAsync_closure.call$2 (http://localhost:8080/main.dart.js:7065:14)
    at _awaitOnObject_closure.dart._awaitOnObject_closure.call$1 (http://localhost:8080/main.dart.js:7053:34)
    at StaticClosure.dart._rootRunUnary.func (http://localhost:8080/main.dart.js:6909:18)
    at _ZoneDelegate.runUnary$3 (http://localhost:8080/main.dart.js:9904:41)
    at NgZone.dart.NgZone._runUnary$5 (http://localhost:8080/main.dart.js:26306:24)
ORIGINAL EXCEPTION: Invalid argument: 0
```

For even more weird behavior, observe that the browser bar contains the following URL `http://localhost:8080/#/todos/0`. Now click on that URL and press enter. Observe that console outut does not contain above stack trace and error. 
