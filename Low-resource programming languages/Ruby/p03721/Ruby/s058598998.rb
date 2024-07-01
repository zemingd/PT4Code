n, k = gets.split(" ").map(&:to_i)
array = [0] * 100001
n.times do |i|
  a, b = gets.split(" ").map(&:to_i)
  array[a] += b
end

ans = nil
array.each_with_index do |x, i|
  b = x
  if k <= b then
    ans = i
    break
  else
    k = k - b
  end
end

puts ans