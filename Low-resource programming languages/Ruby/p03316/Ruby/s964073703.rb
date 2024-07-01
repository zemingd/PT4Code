n = gets.strip
p n
sum = n.split('').inject(0){|sum1, i| sum1 + i.to_i }
p sum
if n.to_i % sum.to_i == 0
  p "Yes"
else
  p "No"
end
