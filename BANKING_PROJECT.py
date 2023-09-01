class BankAccount:
    def __init__(self, name, account_number, balance=0):
        self.name = name
        self.account_number = account_number
        self.balance = balance

    def deposit(self, amount):
        self.balance += amount
        print(f"Deposited {amount}. Current balance: {self.balance}")

    def withdraw(self, amount):
        if amount <= self.balance:
            self.balance -= amount
            print(f"Withdrew {amount}. Current balance: {self.balance}")
        else:
            print("Insufficient balance.")

    def get_balance(self):
        return self.balance


def main():
    # Create an empty dictionary to store account information
    accounts = {}

    while True:
        print("\nWelcome to Our Bank")
        print("1. Sign Up")
        print("2. Account Login")
        print("3. Exit")

        choice = int(input("Enter your choice: "))

        if choice == 1:
            name = input("Enter your name: ")
            account_number = input("Enter a unique account number: ")

            # Check if the account number is already registered
            if account_number in accounts:
                print("Account number already exists. Please choose another.")
            else:
                accounts[account_number] = BankAccount(name, account_number)
                print("Account created successfully!")

        elif choice == 2:
            account_number = input("Enter your account number: ")

            # Check if the account number exists in the dictionary
            if account_number in accounts:
                current_account = accounts[account_number]
                print(f"Welcome, {current_account.name}!")
                while True:
                    print("\n1. Deposit")
                    print("2. Withdraw")
                    print("3. Check Balance")
                    print("4. Logout")

                    option = int(input("Enter your option: "))

                    if option == 1:
                        amount = float(input("Enter the amount to deposit: "))
                        current_account.deposit(amount)

                    elif option == 2:
                        amount = float(input("Enter the amount to withdraw: "))
                        current_account.withdraw(amount)

                    elif option == 3:
                        print(f"Current balance: {current_account.get_balance()}")

                    elif option == 4:
                        print("Logged out successfully.")
                        break

                    else:
                        print("Invalid option. Please try again.")

            else:
                print("Account not found. Please sign up first.")

        elif choice == 3:
            print("Thank you for using our banking system.")
            break

        else:
            print("Invalid choice. Please try again.")


if __name__ == "__main__":
    main()
