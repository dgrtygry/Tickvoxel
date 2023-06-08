import os

# Get the path to the "data" folder
data_folder = os.path.join(os.path.dirname(__file__), "data")

# Load all "frames.py" files
frames = []

for filename in os.listdir(data_folder):
    if filename.startswith("frames") and filename.endswith(".py"):
        frame_path = os.path.join(data_folder, filename)
        exec(open(frame_path).read())
        frames.append(filename)

# Print the loaded frames
for frame in frames:
    print(f"Loaded frame: {frame}")
