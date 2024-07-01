n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = a.select { |x| x % 2 == 0 }
c = a.select { |y| y % 3 == 0 || y % 5 == 0 }
if b.size == c.size
  puts "DENIED"
else
  puts "APPROVED"
end