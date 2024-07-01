n = gets.to_i

if n == 1 then
  puts 0
elsif
  puts (1...n).map { |i| i % (i + 1)}.inject(:+)
end
