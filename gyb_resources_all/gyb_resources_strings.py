import os
import re
import json
from gyb_resources_common import _number_to_word_dictionary
from gyb_resources_common import _number_to_word
from gyb_resources_common import _decapitalize

# Public:

class StringResource:
	def __init__(self, variable_name, key, value, comments):
		self.variable_name = variable_name
		self.key = key
		self.value = value
		self.comments = comments
	def __repr__(self):
		return f'StringResource(variable_name={self.variable_name}, key={self.key}, value={self.value}, comments={self.comments})'

def string_resources(strings_path):
	return _string_resources(strings_path)

# Private:

def _decapitalize_all(text):
	split_words = text.replace(".", " ").replace("-", " ").replace("_", " ").split(" ")
	x = map(lambda str: _decapitalize(str), split_words)
	return "_".join(x)

def _clean_string_key(name):
	decapitalized_text = _decapitalize_all(name)
	cleaned_asset_name_1 = re.sub(r"[^a-zA-Z0-9_]", "_", decapitalized_text)
	numbers_replaced = re.sub(r"(^[0-9]+)([a-z]?)", lambda m: _number_to_word(m.group(1))+m.group(2).upper(), cleaned_asset_name_1)
	return f'`{numbers_replaced}`'

def _string_resources(strings_path: str):
	with open(strings_path, encoding='utf-8') as f:
		strings_file_content = f.read()
		string_resources = _parse_strings_file_content(strings_file_content)
		return string_resources

def _parse_strings_file_content(strings_file_content: str):
	matches = re.finditer(r'(?:\/\*(?P<comments>.*)\*\/\n)?"(?P<key>[\w._*]+)" = "(?P<value>.*)";', strings_file_content)
	string_resources = []
	for match in matches:
		string_resources.append(_match_to_string_resource(match))

	return string_resources

def _match_to_string_resource(match) -> StringResource:
	key = match.group('key')
	variable_name = _clean_string_key(key)
	value = match.group('value')
	comments = match.group('comments')
	return StringResource(variable_name = variable_name, key = key, value = value, comments = comments.strip() if comments else comments)

# if __name__ == '__main__':
# 	string_resources = string_resources('../resourcesTest/en.lproj/Localizable.strings')
# 	print(string_resources)
