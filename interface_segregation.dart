// The Interface Segregation Principle (ISP) states that a class should not be 
// forced to implement interfaces it does not use. In other words, 
// a class should only depend on the interfaces it needs.

// Here is an example of a class that violates the ISP
abstract class Shape {
  double area();
  double perimeter();
}

class Rectangle1 implements Shape {
  double width = 0.0;
  double height = 0.0;

  double area() {
    return width * height;
  }

  double perimeter() {
    return 2 * (width + height);
  }
}

class Circle1 implements Shape {
  double radius = 0.0;

  double area() {
    return 3.14 * radius * radius;
  }

  double perimeter() {
    return 2 * 3.14 * radius;
  }
}

// This class violates the ISP because a Circle does not have a perimeter. 
// A better approach would be to create separate interfaces for area and perimeter

abstract class Area {
  double area();
}

abstract class Perimeter {
  double perimeter();
}

class Rectangle2 implements Area, Perimeter {
  double width = 0.0;
  double height = 0.0;

  double area() {
    return width * height;
  }

  double perimeter() {
    return 2 * (width + height);
  }
}

class Circle2 implements Area {
  double radius = 0.0;

  double area() {
    return 3.14 * radius * radius;
  }
}
