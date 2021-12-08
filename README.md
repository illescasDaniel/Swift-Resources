# Instructions

## What's needed:
1. You need python 3 installed and you should have an alias/symbolic link to the binary named "python3".
2. You will also need the `gyb.py` program made by Apple developers. 
	- Official file link: https://github.com/apple/swift/blob/main/utils/gyb.py
	- Some unofficial documentation and tutorials: https://nshipster.com/swift-gyb/

## Tutorial using the example project

1. Put the `gyb.py` in the root folder of the project, the structure should be:
```
	├── README.md
	├── __init__.py			# necessay file to easily use gyb_resources.py
	├── gyb.py				# apple's gyb
	├── gyb_resources.py	# python script to generate code
	├── gyb_script.py		# script for Xcode
	├── resourcesTest		# project folder name
```

2. Run the project

## Tutorial for your project

1. You would need to copy these files to the root folder of your project:
```
	├── __init__.py
	├── gyb.py
	├── gyb_resources.py
	├── gyb_script.py
```

2. Change the variable `project_name` inside `gyb_script.py` to your project folder name

