n = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)
result = []
result[0] = 0
result[1] = (h[0] - h[1]).abs

2.upto(n-1) do |i|
  result[i] = [result[i-2] + (h[i-2] - h[i]).abs, result[i-1] + (h[i-1] - h[i]).abs].min
end
p result[n-1]
