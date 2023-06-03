# Flutter

The flutter code executes from the `main.dart` file inside the lib directory.
which is the main gate for the Flutter app

The first statement of the file should  be the import statement
And should be the import of the run app function to start the app e.g.

```dart
import 'package:flutter/material.dat'
// The material.dart file includes the runApp() function.
// Also the material.dart file includes some other widgets.

```

after importing the `material.dart` file we should call the `runApp` function inside the `main` function which is the main scope of the application.

the flutter code starts from the main function and then goes line by line

```dart
import 'package:flutter/material.dat'
// The material.dart file includes the runApp() function.
// Also the material.dart file includes some other widgets.

void main (){
  // We can call the runApp() function here.
  runApp()
}
```

The runApp expects you to send a material widget to it, in that case, we’re going to send the MaterialApp widget to it, to display a simple text on the screen, let's display the popular text ‘Hello World!’

```dart
import 'package:flutter/material.dat';

void main() {
  runApp(MaterialApp(
    Text('Hello World!')
  ));
}

```

The above code will display an ugly screen containing the ‘Hello World!’ text.
