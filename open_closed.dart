// The Open/Closed Principle (OCP) states that a class should be open 
// for extension but closed for modification. In other words, 
// you should be able to extend a class's behavior without modifying its source code.

// Here is an example of a class that violates the OCP
class Rectangle1 {
  double width = 0.0;
  double height = 0.0;

  double area() {
    return width * height;
  }
}

// If we want to create a new class for calculating the area of a circle, 
// we would have to modify the Rectangle class which is currently violating the OCP. 
// A better approach would be to create an interface for calculating 
// the area and have each shape implement the interface

abstract class Shape {
  double area();
}

class Rectangle2 implements Shape {
  double width = 0.0;
  double height = 0.0;

  double area() {
    return width * height;
  }
}

class Circle implements Shape {
  double radius = 0.0;

  double area() {
    return 3.14 * radius * radius;
  }
}
