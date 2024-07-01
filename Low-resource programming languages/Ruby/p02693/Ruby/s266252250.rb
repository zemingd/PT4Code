k = gets.to_i
a,b = gets.chomp.split.map(&:to_i)

sum = 0
(a..b).each do |i|
  if i % k == 0
    sum += 1
  end
end

if sum > 0
  puts "OK"
else
  puts "NO"
end