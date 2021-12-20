#!/usr/bin/env python3

import os

project_name = "resourcesTest" # Change this!

project_folder = f"../{project_name}"

gyb_extension = ".gyb"

def check_files_in_folder(folder):
    for file in os.listdir(folder):
        full_file_path = os.path.join(folder, file)
        if os.path.isfile(full_file_path) and file.endswith(gyb_extension):
            print(f"Processing {file} ({full_file_path})")
            final_file_name = file[0:len(file)-len(gyb_extension)]
            os.system(f"python3 gyb.py --line-directive '' {full_file_path} -o {final_file_name}")
        elif os.path.isdir(full_file_path):
            check_files_in_folder(full_file_path)

check_files_in_folder(project_folder)
