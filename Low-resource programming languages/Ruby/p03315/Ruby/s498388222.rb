s = gets.to_s.chomp!
result = 0

s.each_char do |c|
  c == '+' ? result += 1 : result -= 1
end

puts result