def show_menu():
    print("\n====== TO-DO LIST APP ======")
    print("1. Show tasks")
    print("2. Add task")
    print("3. Remove task")
    print("4. Exit")

def main():
    tasks = []

    while True:
        show_menu()
        choice = input("Choose an option (1-4): ")

        if choice == "1":
            print("\nYour tasks:")
            if not tasks:
                print("No tasks yet.")
            else:
                for index, task in enumerate(tasks, start=1):
                    print(f"{index}. {task}")

        elif choice == "2":
            task = input("Enter a task: ")
            tasks.append(task)
            print(f"Task '{task}' added.")

        elif choice == "3":
            task_num = int(input("Enter task number to remove: "))
            if 0 < task_num <= len(tasks):
                removed = tasks.pop(task_num - 1)
                print(f"Task '{removed}' removed.")
            else:
                print("Invalid task number.")

        elif choice == "4":
            print("Goodbye!")
            break

        else:
            print("Invalid choice. Try again.")
