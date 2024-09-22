// Abstract class Shape
abstract class Shape {
  // Abstract method to calculate area
  double calculateArea();
}

// Rectangle subclass implements calculateArea method
class Rectangle extends Shape {
  double length, width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;  // Area of rectangle
  }
}

// Circle subclass implements calculateArea method
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.1416 * radius * radius;  // Area of circle
  }
}

void main() {
  Shape rectangle = Rectangle(5, 10);
  Shape circle = Circle(7);

  print("Area of Rectangle: ${rectangle.calculateArea()}");
  print("Area of Circle: ${circle.calculateArea()}");
}