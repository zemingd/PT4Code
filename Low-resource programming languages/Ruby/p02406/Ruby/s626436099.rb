n = gets.to_i
for i in 3..n do
  printf " %d", i if (i % 3 == 0) || i.to_s.match("3")
end
puts
