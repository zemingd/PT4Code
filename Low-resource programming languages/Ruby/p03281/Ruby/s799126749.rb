n = gets.to_i

a = 0
(1..n).each do |i|
  next if i.even?
  count = 0
  (1..i).each{ |j| count+=1 if i%j == 0 }
  a += 1 if count==8
end

p a