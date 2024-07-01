N = gets.to_i
A = gets.split().map(&:to_i)
result = Array.new(N, 0)

A.each do |i|
  result[i - 1] += 1
end

result.each do |i|
  puts i
end
