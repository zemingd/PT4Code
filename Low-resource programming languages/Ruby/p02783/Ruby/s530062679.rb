h, a = gets.split.map(&:to_i)
b = h / a
c = h % a
if b == 0
  puts 1
elsif b > 0 && c == 0
  puts b
else
  puts b + 1
end