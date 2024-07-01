n = gets.to_i
s = gets.chars
min = 1e6
left = Array.new(n+1,0)
right = Array.new(n+1,0)
(2..n).each do |i|
  if s[i-2] == "W"
    left[i] = left[i-1] + 1
  else
    left[i] = left[i-1]
  end
end
(1..n-1).reverse_each do |i|
  if s[i] == "E"
    right[i] = right[i+1] + 1
  else
    right[i] = right[i+1]
  end
end
(1..n).each do |i|
  sum = left[i] + right[i]
  min = sum if min > sum
end
p min
