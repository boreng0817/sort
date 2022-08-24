def path_to_frame_number(path):
    print(path)
    frame = path.split("/")[-1][:-4]
    try:
        frame = int(frame)
    except:
        frame = None
    return frame


def path_to_output_name(path):
    ret = ""
    try:
        ret = path.split("/")[-1]
    except:
        ret = ""
    return ret
