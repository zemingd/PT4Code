n, k = gets.strip.split.map(&:to_i)
l = gets.strip.split.map(&:to_i).sort.reverse
sum = 0
(l - l[-(n-k)..-1]).each do |i|
  sum+=i
end
puts sum