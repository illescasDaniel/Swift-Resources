#!/usr/bin/env python3

import os

project_name = "resourcesTest"

project_folder = f"./{project_name}"

gyb_extension = ".gyb"

for file in os.listdir(project_folder):
    if file.endswith(gyb_extension):
        full_file_path = os.path.join(project_folder, file)
        final_file_name = file[0:len(file)-len(gyb_extension)]
        os.system(f"python gyb.py --line-directive '' {full_file_path} -o {final_file_name}")
