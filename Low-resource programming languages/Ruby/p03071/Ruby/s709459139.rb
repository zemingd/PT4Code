a, b = gets().chomp.split("\s").map{|x| x.to_i}

total = 0
(1..2).each do |t|
  if a >= b
    total += a
    a -= 1
  else
    total += b
    b -= 1
  end
end

puts total
