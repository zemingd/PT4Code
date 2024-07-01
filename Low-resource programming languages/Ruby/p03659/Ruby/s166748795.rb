n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i).sort

if n == 2
  puts (a[0] - a[1]).abs
  exit 0
end

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

result = []
right.reverse!
0.upto(left.size - 2) do |i|
  result.push((left[i] - right[i]).abs)
end

p left, right, result

puts result.min
