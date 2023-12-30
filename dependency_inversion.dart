// The Dependency Inversion Principle (DIP) states that high-level modules 
// should not depend on low-level modules. Both should depend on abstractions. 
// In other words, you should depend on abstractions, not on concrete implementations.

// Here is an example of a class that violates the DIP:
class User {
  int id = 0;
  String name = '';
}

class UserRepository1 {
  void save(User user) {
    // save user to database
  }
}

class UserService1 {
  UserRepository1 userRepository;

  UserService1(this.userRepository);

  void saveUser(User user) {
    userRepository.save(user);
  }
}

// This class violates the DIP because UserService depends on the concrete 
// implementation of UserRepository. A better approach would be to depend on an abstraction:

abstract class UserRepository2 {
  void save(User user);
}

class FirebaseUserRepository implements UserRepository2 {
  void save(User user) {
    // save user to Firebase
  }
}

class UserService2 {
  UserRepository2 userRepository;

  UserService2(this.userRepository);

  void saveUser(User user) {
    userRepository.save(user);
  }
}

// By depending on an abstraction, UserService is no longer tied to a specific 
// implementation of UserRepository, making it more flexible and maintainable.
