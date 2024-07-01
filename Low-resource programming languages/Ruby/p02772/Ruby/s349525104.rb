_n = gets.to_i
a = gets.split.map(&:to_i)
s = a.inject(:+)
if s % 3 == 0 || s % 5 == 0
  puts 'APPROVED'
else
  puts 'DENIED'
end