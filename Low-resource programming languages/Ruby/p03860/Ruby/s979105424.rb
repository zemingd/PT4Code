line = gets
word = line.gsub(/AtCoder\s+/, '').gsub(/\s+Contest/, '')
puts("A#{word[0]}C")
