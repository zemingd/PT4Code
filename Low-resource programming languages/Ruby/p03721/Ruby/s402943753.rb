n, k = gets.split(" ").map(&:to_i)
array = []
n.times do |i|
  a, b = gets.split(" ").map(&:to_i)
  array[a] ||= []
  array[a].append([a, b])
end
array = array.compact.flatten 1

ans = nil
array.each do |x|
  a, b = x
  if k <= b then
    ans = a
    break
  else
    k = k - b
  end
end

puts ans