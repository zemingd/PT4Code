a, b = gets.chomp.split.map(&:to_i)

ans = (b / a) % a

if ans == 0
  puts b + a
else
  puts b - a
end