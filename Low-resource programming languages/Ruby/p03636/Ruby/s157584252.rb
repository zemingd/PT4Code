inputWord = STDIN.gets.split("");
encodedWord = "";

def encoder(encodeWord)
	num = encodeWord.length-2;
	encodedWord = encodeWord[0] + num.to_s + encodeWord[encodeWord.length-1];
	return encodedWord;
end

STDOUT.puts encoder(inputWord);