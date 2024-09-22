class Animal {
  // Method to be overridden
  void makeSound() {
    print("Animal makes a sound");
  }
}

// Dog subclass overrides the makeSound method
class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}

// Cat subclass overrides the makeSound method
class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat meows");
  }
}

void main() {
  Animal myDog = Dog();
  Animal myCat = Cat();

  myDog.makeSound();  // Output: Dog barks
  myCat.makeSound();  // Output: Cat meows
}