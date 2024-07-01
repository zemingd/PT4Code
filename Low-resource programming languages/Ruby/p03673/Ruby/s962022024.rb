n = gets.to_i
array = gets.split.map(&:to_i)
res = ''
last = n - 1
n.times do |i|
  res += array[i%2==0 ? i : last - i].to_s
end
p res