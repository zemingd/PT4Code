n = gets.to_i
ps = gets.split.map(&:to_i)
count = 0
(1..n-2).each do |i|
  count += 1 if ps[i] > ps[i-1] && ps[i] < ps[i+1] || ps[i] < ps[i-1] && ps[i] > ps[i+1]
end
puts count