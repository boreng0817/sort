import os 
import subprocess

ROOT_DIR = "./video_output"
os.chdir(ROOT_DIR)

for d in os.listdir():
    os.chdir(d)
    subprocess.call([
        "ffmpeg", 
        "-framerate", "30", 
        "-i", "%06d.jpg", 
        "-r", "ntsc", d + ".mp4"
        ])
    os.chdir("../")
