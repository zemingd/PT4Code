n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

left = [a[0]]

1.upto(a.size - 2) do |i|
  j = left.size - 1
  left.push(left[j] + a[i])
end

right = [a[a.size - 1]]

(a.size - 2).downto(1) do |i|
  j = right.size - 1
  right.push(right[j] + a[i])
end

result = (10**9) + 1
right.reverse!

0.upto(left.size - 1) do |i|
  diff = (left[i] - right[i]).abs
  result = diff if result > diff
end

# p right, left

puts result
