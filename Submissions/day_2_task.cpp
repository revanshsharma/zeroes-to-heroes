#include <iostream>
#include <string>
#include <fstream>
using namespace std;

int main() {
    int num, age, a, b;
   string storedPassword, enteredPassword;

    // 1. Even or Odd
    cout << "Enter a number: ";
    cin >> num;

    if (num % 2 == 0)
        cout << "Result: " << num << " is Even\n\n";
    else
        cout << "Result: " << num << " is Odd\n\n";

    // 2. check Voting Eligibility
    cout << "Enter your age: ";
    cin >> age;

    if (age >= 18)
        cout << "Result: You are eligible to vote\n\n";
    else
        cout << "Result: You are not eligible to vote\n\n";

    // 3. Largest of Two Numbers
    cout << "Enter two numbers: ";
    cin >> a >> b;

    if (a > b)
        cout << "Result: " << a << " is larger\n\n";
    else if (b > a)
        cout << "Result: " << b << " is larger\n\n";
    else
        cout << "Result: Both numbers are equal\n\n";

    // 4. Simple Login Check
    // prerequisite for bonus task is to make a password.txt file and store password in it.
    ifstream file("password.txt");

    if (!file) {
        cout << "Error: Password file not found!" << endl;
        return 0;
    }

    // Read password from file
    file >> storedPassword;
    file.close();

    cout << "Enter password: ";
    cin >> enteredPassword;

    // Compare passwords
    if (enteredPassword == storedPassword)
        cout << "Login Successful" << endl;
    else
        cout << "Incorrect Password" << endl;

    return 0;
}
