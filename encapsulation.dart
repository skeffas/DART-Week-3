class Employee {
  // Private property to store the salary
  double _salary;

  // Constructor to initialize the salary
  Employee(this._salary);

  // Getter method to access the private salary
  double get salary => _salary;

  // Setter method to update the salary with validation
  set salary(double value) {
    if (value > 0) {
      _salary = value;
    } else {
      print('Salary must be greater than 0');
    }
  }

  // Method to calculate annual salary
  double calculateAnnualSalary() {
    return _salary * 12;  // Annual salary
  }
}

void main() {
  // Creating an instance of Employee
  Employee emp = Employee(5000);

  // Accessing the salary using getter
  print("Monthly Salary: ${emp.salary}");

  // Calculating and printing the annual salary
  print("Annual Salary: ${emp.calculateAnnualSalary()}");

  // Updating the salary using setter
  emp.salary = 6000;
  print("Updated Monthly Salary: ${emp.salary}");

  // Trying to set an invalid salary
  emp.salary = -2000; // This will trigger validation
}