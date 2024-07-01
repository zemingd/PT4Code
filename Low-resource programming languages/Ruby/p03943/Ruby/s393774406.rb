cs = gets.split.map(&:to_i)
sum = cs.inject(:+)
if sum.even?
  puts (cs.index(sum / 2) ? "Yes" : "No")
else
  puts "No"
end