a,b,c,d = gets.split(" ").map!{|i| i.to_i}
sum = 0
0.upto(100) do |f|
  if f >= a and f< b
    if f >= c and f < d
      sum += 1
    end
  end
end
puts sum
