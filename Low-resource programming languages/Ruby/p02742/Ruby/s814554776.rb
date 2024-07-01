h, w = gets.chomp.split(' ').map(&:to_i)
a = h * w

if a.even?
  puts a / 2
else
  puts a / 2 + 1
end