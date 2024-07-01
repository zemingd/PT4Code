x, y, z= gets.chomp.split(' ').map(&:to_i)

x2 = x * 100
y2 = y * 10

sum = x2 + y2 + z

if sum % 4 == 0
  puts "YES"
else
  puts "NO"
end
