// The Single Responsibility Principle (SRP) states that a class 
// should have only one reason to change. 
// In other words, a class should have only one responsibility. 
// A class that has multiple responsibilities is hard to maintain and modify.


// This class violates the SRP because it has two responsibilities: 
// saving the user to the database and sending an email to the user.
class User1 {
  int id = 0;
  String name = '';

  void save() {
    // save user to database
  }

  void sendEmail() {
    // send email to user
  }
}

// A better approach would be to split the class into two separate classes
class User2 {
  int id = 0;
  String name = '';
}

class UserRepository {
  void save(User2 user) {
    // save user to database
  }
}

class EmailService {
  void sendEmail(User2 user) {
    // send email to user
  }
}
