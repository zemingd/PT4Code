x = gets.split(" ").map{|s| s.to_i}
c = 0
for i in x[0]..x[1] do
  c += 1 if x[2] % i == 0
end
puts c
