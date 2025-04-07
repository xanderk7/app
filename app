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

if __name__ == "__main__":
    main()

import tkinter as tk
from tkinter import messagebox

# Function to add a task
def add_task():
    task = task_entry.get()
    if task != "":
        task_listbox.insert(tk.END, task)
        task_entry.delete(0, tk.END)
    else:
        messagebox.showwarning("Input error", "Please enter a task.")

# Function to remove selected task
def remove_task():
    selected = task_listbox.curselection()
    if selected:
        task_listbox.delete(selected)
    else:
        messagebox.showwarning("Selection error", "Please select a task to remove.")

# Create the main window
window = tk.Tk()
window.title("To-Do List")
window.geometry("400x400")
window.configure(bg="#f5f5f5")

# Title label
title_label = tk.Label(window, text="To-Do List", font=("Arial", 18, "bold"), bg="#f5f5f5")
title_label.pack(pady=10)

# Task entry field
task_entry = tk.Entry(window, font=("Arial", 14))
task_entry.pack(pady=10, padx=20, fill=tk.X)

# Add button
add_button = tk.Button(window, text="Add Task", font=("Arial", 12), bg="#add8e6", command=add_task)
add_button.pack(pady=5)

# Task listbox
task_listbox = tk.Listbox(window, font=("Arial", 12), selectbackground="#a3d2ca")
task_listbox.pack(pady=10, padx=20, fill=tk.BOTH, expand=True)

# Remove button
remove_button = tk.Button(window, text="Remove Selected Task", font=("Arial", 12), bg="#f08080", command=remove_task)
remove_button.pack(pady=5)

# Run the app
window.mainloop()

