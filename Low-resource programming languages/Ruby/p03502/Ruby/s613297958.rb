n = gets.chomp
len = n.length
fx = 0
len.times do |i|
  fx += n[i].to_i
end
if n.to_i % fx == 0
  puts "Yes"
else
  puts "No"
end