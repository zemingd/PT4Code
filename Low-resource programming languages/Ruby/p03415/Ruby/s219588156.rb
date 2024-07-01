a,b = gets.split(" ").map!{|i| i.to_i}
sum = 0
a.upto(b) do |k|
  c = k.to_s
  if c[0] == c[4] and c[1] == c[3]
    sum += 1
  end
end
puts sum
