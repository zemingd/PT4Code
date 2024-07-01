string = gets.chomp
alphabets = ('a'..'z').to_a

i = alphabets.index(string)
puts(alphabets[i+1])
