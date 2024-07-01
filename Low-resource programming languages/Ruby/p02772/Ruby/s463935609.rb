N = gets.to_i
num = gets.strip.split.map(&:to_i)
new = num.select {|n| n%2 == 0}
sum = 0
m = new.size
(0..m-1).each do |i|
  if new[i]%3 == 0 or new[i]%5 == 0 then
    sum += 1
  end
end
if sum == m then
  puts "APPROVED"
else
  puts "DENIED"
end