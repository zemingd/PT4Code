n = gets.to_i
s = gets.chomp.chars
count = 0
s.each_with_index do |char, index|
  next if index == 0
  count += 1 if s[index - 1] == char
end
puts n - count
