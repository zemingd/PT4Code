line = gets.chomp!
words = line.split("")
length = words.size - 2
print(words[0], length, words.last)
