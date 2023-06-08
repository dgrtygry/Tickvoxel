import tkinter as tk
from tkinter import messagebox
import language
import os

def open_menu():
    title_frame.pack_forget()
    menu_frame.pack()

def open_settings():
    title_frame.pack_forget()
    settings_frame.pack()

def apply_settings():
    brightness = entry_brightness.get()
    selected_language = language_choice.get()

    # Process brightness adjustment logic
    # Replace this with your own logic for adjusting brightness
    
    # Call the language module to change the language
    language.change_language(selected_language)

    messagebox.showinfo("Settings Applied", "Settings applied successfully!")
    settings_frame.pack_forget()
    title_frame.pack()

def create_world():
    world_name = entry_world_name.get()
    world_size = entry_world_size.get()
    world_type = entry_world_type.get()
    
    # Validate the input values
    if not world_name:
        messagebox.showerror("Error", "Please enter a world name.")
        return
    
    if not world_size.isdigit():
        messagebox.showerror("Error", "Please enter a valid world size.")
        return
    
    world_size = int(world_size)
    
    # Process the world creation based on the chosen settings
    # Replace this with your own logic for creating a world
    
    world_info = f"World Name: {world_name}\nWorld Size: {world_size}\nWorld Type: {world_type}"
    
    # Create world.py and write world_info to it
    with open("world.py", "w") as file:
        file.write(world_info)
    
    messagebox.showinfo("Success", f"World created successfully!\n\n{world_info}")

    # Launch main.py
    os.system("python main.py")

# Create the main window
window = tk.Tk()
window.title("Tickvoxel v1.0")

# Create title screen frame
title_frame = tk.Frame(window)
title_frame.pack(pady=50)

title_label = tk.Label(title_frame, text="Tickvoxel v1.0", font=("Helvetica", 24, "bold"))
title_label.pack(pady=20)

play_button = tk.Button(title_frame, text="Play", command=open_menu)
play_button.pack()

settings_button = tk.Button(title_frame, text="Settings", command=open_settings)
settings_button.pack()

# Create settings frame
settings_frame = tk.Frame(window)

label_brightness = tk.Label(settings_frame, text="Brightness:")
label_brightness.pack()
entry_brightness = tk.Entry(settings_frame)
entry_brightness.pack()

label_language = tk.Label(settings_frame, text="Language:")
label_language.pack()
language_choice = tk.StringVar()
language_choice.set("English")  # Default language
language_dropdown = tk.OptionMenu(settings_frame, language_choice, "English", "Spanish", "French")
language_dropdown.pack()

apply_button = tk.Button(settings_frame, text="Apply Settings", command=apply_settings)
apply_button.pack()

# Create menu frame
menu_frame = tk.Frame(window)

label_world_name = tk.Label(menu_frame, text="World Name:")
label_world_name.pack()
entry_world_name = tk.Entry(menu_frame)
entry_world_name.pack()

label_world_size = tk.Label(menu_frame, text="World Size:")
label_world_size.pack()
entry_world_size = tk.Entry(menu_frame)
entry_world_size.pack()

label_world_type = tk.Label(menu_frame, text="World Type:")
label_world_type.pack()
entry_world_type = tk.Entry(menu_frame)
entry_world_type.pack()

create_button = tk.Button(menu_frame, text="Create World", command=create_world)
create_button.pack()

# Start with only the title screen visible
menu_frame.pack_forget()
settings_frame.pack_forget()

# Start the main event loop
window.mainloop()
