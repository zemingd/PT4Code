a, b, c, d = gets.chomp.split(" ").map(&:to_i)

if b <= c || a >= d then
  puts 0
elsif b > c then
  puts [b, d].min - c
else
  puts [c, d].min - a
end