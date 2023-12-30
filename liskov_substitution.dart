// The Liskov Substitution Principle (LSP) states that objects 
// of a superclass should be able to be replaced with objects 
// of a subclass without affecting the correctness of the program. In other words, 
// a subclass should be able to replace its superclass without breaking the code.

// Here is an example of a class that violates the LSP
class Rectangle1 {
  double width = 0.0;
  double height = 0.0;

  double area() {
    return width * height;
  }
}

class Square1 extends Rectangle1 {
  double side = 0.0;

  @override
  void set width(double value) => side = value;

  @override
  void set height(double value) => side = value;
}

// This class violates the LSP because a Square cannot be used in place of a Rectangle 
// without affecting the correctness of the program. 
// A better approach would be to create a separate class for Square

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

class Square2 implements Shape {
  double side = 0.0;

  double area() {
    return side * side;
  }
}
