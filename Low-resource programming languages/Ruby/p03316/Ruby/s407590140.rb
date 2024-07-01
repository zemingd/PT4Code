n = gets.to_i
a = n.to_s.split("").map!{|i| i.to_i}
sn = 0
a.length.times do |j|
  sn += a[j]
end
if n % sn == 0
  puts 'Yes'
else puts 'No'
end
