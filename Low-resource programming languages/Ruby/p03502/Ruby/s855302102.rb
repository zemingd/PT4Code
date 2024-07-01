x =gets.to_i
s = x.to_s.split("").map!{|i| i.to_i}
fx = 0
s.length.times do |k|
  fx += s[k]
end
if x % fx == 0
  puts 'Yes'
else puts 'No'
end
