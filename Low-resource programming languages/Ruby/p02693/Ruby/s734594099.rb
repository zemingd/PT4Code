n = gets.to_i
a = gets.split.map(&:to_i)
s = (a[0]..a[1]).to_a
y = s.select { |item| item % n == 0 }
if y.length == 0
  puts "NG"
else
  puts "OK"
end