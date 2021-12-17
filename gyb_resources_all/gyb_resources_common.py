_number_to_word_dictionary = {
	0: 'zero', 1: 'one', 2: 'two', 3: 'three', 4: 'four', 5: 'five',
	6: 'six', 7: 'seven', 8: 'eight', 9: 'nine', 10: 'ten',
	11: 'eleven', 12: 'twelve', 13: 'thirteen', 14: 'fourteen',
	15: 'fifteen', 16: 'sixteen', 17: 'seventeen', 18: 'eighteen',
	19: 'nineteen', 20: 'twenty', 30: 'thirty', 40: 'forty',
	50: 'fifty', 60: 'sixty', 70: 'seventy', 80: 'eighty',
	90: 'ninety', 100: 'oneHundred', 1000: 'oneThousand'
}

def _number_to_word(number_string):
	try:
		number = int(number_string)
		return _number_to_word_dictionary[number]
	except:
		return "_"

def _decapitalize(s):
	if not s:  # check that s is not empty string
		return s
	return s[0].lower() + s[1:]

def _camelCase(text):
	decapitalized_text = _decapitalize(text)
	split_words = decapitalized_text.replace("-", " ").replace("_", " ").split(" ")
	if len(split_words) == 1:
		return decapitalized_text
	x = map(lambda str: str.capitalize(), split_words[1:])
	return _decapitalize(split_words[0]) + "".join(x)
