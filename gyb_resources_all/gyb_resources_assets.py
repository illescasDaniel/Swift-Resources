import os
import re
import json
from gyb_resources_common import _camelCase
from gyb_resources_common import _number_to_word

_assets_folder_name = "Assets.xcassets"

# Public:

class Resource:
	def __init__(self, name, variable_name):
		self.name = name
		self.variable_name = variable_name

def image_resources(parent_directory = _assets_folder_name):
	return _resources(parent_directory, _DirType.IMAGE, parent_directory)
		
def color_resources(parent_directory = _assets_folder_name):
	return _resources(parent_directory, _DirType.COLOR, parent_directory)

# Private:

def _resource_name_without_suffix(file_path, suffix):
	return file_path[:len(file_path)-len(suffix)]
		
def _clean_asset_name(name):
	camel_case_name = _camelCase(name)
	cleaned_asset_name_1 = re.sub(r"[^a-zA-Z0-9_]", "_", camel_case_name)
	numbers_replaced = re.sub(r"(^[0-9]+)([a-z]?)", lambda m: _number_to_word(m.group(1))+m.group(2).upper(), cleaned_asset_name_1)
	return f"`{numbers_replaced}`"

def _should_preserve_namespace(full_file_path_arg):
	with open(full_file_path_arg) as f:
		json_string = f.read()
		contents_json = json.loads(json_string)
		try:
			return contents_json["properties"]["provides-namespace"] == True
		except: 
			return False

class _DirType:
    IMAGE = "image"
    COLOR = "color"

def _resources(parent_directory, type, original_parent_directory):

	if type != _DirType.IMAGE and type != _DirType.COLOR:
		raise Exception(f"Invalid type {type}")

	contents_json_file_name = "Contents.json"
	image_folder_suffix = ".imageset"
	color_folder_suffix = ".colorset"
	app_icon_folder_suffix = ".appiconset"
	resource_folder_suffix = None
	if type == _DirType.IMAGE:
		resource_folder_suffix = image_folder_suffix
	elif type == _DirType.COLOR:
		resource_folder_suffix = color_folder_suffix

	resources = []
	for file_path in os.listdir(parent_directory):
		full_file_path = os.path.join(parent_directory, file_path)

		if file_path.endswith(resource_folder_suffix):

			resource_folder_name_without_suffix = _resource_name_without_suffix(file_path, resource_folder_suffix)

			if parent_directory == _assets_folder_name:
				resources.append(Resource(resource_folder_name_without_suffix, _clean_asset_name(resource_folder_name_without_suffix)))
			else:
				resource_name = resource_folder_name_without_suffix
				full_resource_name = _resource_name_without_suffix(full_file_path, resource_folder_suffix)[len(f"{original_parent_directory}/"):]
				preserve_namespace = _should_preserve_namespace(os.path.join(parent_directory, contents_json_file_name))

				if preserve_namespace:
					resource_name = full_resource_name
				resources.append(Resource(resource_name, _clean_asset_name(full_resource_name)))
		elif os.path.isdir(full_file_path) and not(file_path.endswith(image_folder_suffix)) and not(file_path.endswith(color_folder_suffix)) and not(file_path.endswith(app_icon_folder_suffix)):
			for extra_file in _resources(full_file_path, type, original_parent_directory):
				resources.append(extra_file)
	return resources