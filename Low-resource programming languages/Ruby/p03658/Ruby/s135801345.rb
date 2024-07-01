n, k = gets.strip.split.map(&:to_i)
l = gets.strip.split.map(&:to_i).sort.reverse
sum = 0
if n == k
  puts l.each do |i|
    sum+=i
  end
else
(l - l[-(n-k)..-1]).each do |i|
  sum+=i
end
puts sum
end