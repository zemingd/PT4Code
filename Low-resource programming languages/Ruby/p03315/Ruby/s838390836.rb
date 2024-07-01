strings = gets.chomp.chars
j = 0
strings.each do |i|
j += 1 if i == '+'
j -= 1 if i == '-'
end
puts j
