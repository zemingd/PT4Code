n = gets.to_i
a = n.to_s.split("").map!{|i| i.to_i}
sum = 0
(a.length-1).times do |j|
  sum += a[j]
end
if n % sum == 0
  puts 'Yes'
else puts 'NO'
end
