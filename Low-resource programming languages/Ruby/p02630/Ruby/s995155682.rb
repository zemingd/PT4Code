N = gets.to_i
counts = Array.new(100000+1, 0)
sum = 0
A = gets.split.each do |i|
  i = i.to_i
  counts[i] += 1
  sum += i
end
Q = gets.to_i

1.upto(Q) do
  b, c = gets.split.map(&:to_i)
  num = counts[b]
  sum += (c - b) * num
  puts sum
  counts[b] = 0
  counts[c] += num
end
