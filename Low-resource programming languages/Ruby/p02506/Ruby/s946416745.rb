word = gets.chomp
word = word.upcase
cnt = 0
while line = gets
  line.strip!
  break if line == "END_OF_TEXT"
  input = line.split(" ")
  input.each { |d|
    d = d.upcase
    if d == word
      cnt += 1
    end
  }
end

puts cnt