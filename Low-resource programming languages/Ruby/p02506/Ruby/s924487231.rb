W = gets.chomp.upcase
count = 0
while line = gets.chomp do
  break if line == "END_OF_TEXT"
  match = line.split.map(&:upcase).select{|word| word == W}
  count += match.size if match
end
puts count