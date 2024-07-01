n = gets.to_i
a = gets.split.map(&:to_i).sort
plus = a.map{|i| i + 1}
minus = a.map{|i| i - 1}
arr = Array.new(100001,0)

sum = a + plus + minus
sum.each do |i|
  next if i < 0
  arr[i] += 1
end

p arr.max
