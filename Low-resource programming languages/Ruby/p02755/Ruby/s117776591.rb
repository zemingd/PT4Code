a, b = gets.chomp.split(" ").map(&:to_i)

t_a = (a * 12.5).to_i
if t_a.div(10) == b
  print t_a
else
  print '-1'
end

