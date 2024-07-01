input = gets

sum = 0
input.to_s.each_char do |c|
  sum += c.to_i
end

puts (input % sum == 0) ? 'yes' : 'no'