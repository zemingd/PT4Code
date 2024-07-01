n = gets.to_i
list = gets.split.map(&:to_i)
count = 0
j = 1
(0..n-1).each do |i|
  if list[i] == j
    j += 1
    count += 1
  end
end
puts count == 0 ? -1 : n - count