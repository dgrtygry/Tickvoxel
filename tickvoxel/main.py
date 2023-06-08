import os

# Get the path to the "data" folder
data_folder = os.path.join(os.path.dirname(__file__), "data")

# Load frame.py from the "data" folder
frame_path = os.path.join(data_folder, "frame.py")
exec(open(frame_path).read())
