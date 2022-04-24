# gradient_text
Requires Flutter `>=2.5.0`

Create gradient texts simply and quickly.

## Getting Started
[![pub package](https://pub.dev/static/img/pub-dev-logo-2x.png?hash=umitaheu8hl7gd3mineshk2koqfngugi)](https://pub.dev/packages/simple_gradient_text)

Only add [simple_gradient_text](https://pub.dev/packages/simple_gradient_text) package to your pubspec.yaml.

```yaml
dependencies:
  simple_gradient_text: 1.2.3
```
Then run `flutter get`.

**Note**: You can add directly - run `flutter pub add simple_gradient_text` in your project.

### **Add a linear gradient text**
```dart 
GradientText(
    'Gradient Text Example',
    style: TextStyle(
        fontSize: 40.0,
    ),
    colors: [
        Colors.blue,
        Colors.red,
        Colors.teal,
    ],
),
```
![Flutter Gradient Text Example](https://i.postimg.cc/C1SrgR1n/gradient-text-example.jpg)


### **Add a radial gradient text**
```dart 
GradientText(
    'Gradient Text Example',
    style: TextStyle(
        fontSize: 40.0,
    ),
    gradientType: GradientType.radial,
    radius: 2.5,
    colors: [
        Colors.blue,
        Colors.red,
        Colors.teal,
    ],
),
```
![Flutter Gradient Text Example](https://i.postimg.cc/0y8XcS14/radial-gradient.jpg)