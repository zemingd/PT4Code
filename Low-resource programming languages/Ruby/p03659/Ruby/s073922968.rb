N = gets.to_i
line = gets
data = line.split(" ")
data.map!{|item| item.to_i}
sum = Array.new(N)
sum[0] = data[0]
(1...N).each do |i|
  sum[i] = sum[i-1] + data[i]
end
min = sum[N-1]
(N-1).times do |i|
  min = [min, (sum[N-1]-2*sum[i]).abs].min
end
p min