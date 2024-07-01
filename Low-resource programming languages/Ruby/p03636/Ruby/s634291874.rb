#encoding: utf-8

inputWord = STDIN.gets.split("");

def encoder(encodeWord)
	encodedWord = "";
	num = encodeWord.length-2;
	encodedWord = encodeWord[0] + num.to_s + encodeWord[encodeWord.length-1];
	return encodedWord;
end

STDOUT.puts encoder(inputWord);