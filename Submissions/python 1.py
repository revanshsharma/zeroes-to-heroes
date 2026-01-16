#1
a = int(input("Enter a number: "))
if a % 2 == 0:
    print(f"{a} is even")
else:
    print(f"{a} is odd")
    
#2
a = int(input("enter your age: "))
if a >= 18:
    print("You are eligible to vote")
else:
    print("You are not eligible to vote")
#3
a = int(input("Enter first number: "))
b = int(input("Enter second number: "))
if a > b:
    print(f"{a} is greater than {b}")
elif a < b:
    print(f"{b} is greater than {a}")
else:
    print("Both numbers are equal")
# Simple Login Check


correct_password = "mypassword123"

entered_password = input("Enter your password: ")
if entered_password == correct_password:
    print("Success / Login Successful")
else:
    print("Incorrect Password")

