word = gets.chomp
cnt = 0
while line = gets.chomp
  break if line == "END_OF_TEXT"
  input = line.split(" ")
  input.each { |d|
    if d == word
      cnt += 1
    end
  }
end

puts cnt