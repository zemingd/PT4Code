str = STDIN.readline.chomp.downcase

count = 0
while line = STDIN.readline.chomp
  break if line == "END_OF_TEXT"
  words = line.split(" ")
  words.each do |word|
    count += 1 if word.downcase == str
  end
end

puts count