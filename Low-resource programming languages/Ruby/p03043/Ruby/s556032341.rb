n, k = gets.split.map(&:to_i)

sum = 0
1.upto(n) do |i|
  if i >= k
    sum += 1
    next
  end
  cnt = 1
  while k > i * 2 ** cnt
    cnt += 1
  end
  sum += 0.5 ** cnt
end
puts sum