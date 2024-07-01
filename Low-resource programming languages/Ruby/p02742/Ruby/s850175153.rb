h, w = gets.chomp.split(' ').map(&:to_i)
if h == 1 || w == 1
  puts 1
  exit
end

a = h * w

if a.even?
  puts a / 2
else
  puts a / 2 + 1
end