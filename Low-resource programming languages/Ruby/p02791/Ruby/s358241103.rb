n = gets.to_i
lists = gets.split.map(&:to_i)
count = 1
ans = lists[0]
(1..n-1).each do |i|
  if ans > lists[i]
    count += 1
    ans = lists[i]
  end
end
puts count
