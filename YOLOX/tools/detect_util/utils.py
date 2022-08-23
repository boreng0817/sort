def path_to_frame_number(path):
    print(path)
    frame = path.split("/")[-1][:-4]
    try:
        frame = int(frame)
    except:
        frame = None
    return frame
