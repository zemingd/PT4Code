s = gets.chomp
t = gets.chomp

result = s.chars.select.each_with_index do |item, i|
  item if item == t[i]
end
puts result.length