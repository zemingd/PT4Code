a,b = gets.chomp.split(" ").map(&:to_i)
count = 0
for i in a..b
  e = i.to_s.split("").map(&:to_i)
  if e[0] == e[4] && e[1] == e[3]
    count += 1
  end
end
puts count