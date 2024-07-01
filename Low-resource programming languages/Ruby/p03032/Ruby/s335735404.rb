N, K = gets.split.map(&:to_i)
v_list = gets.split.map(&:to_i)
sorted_v_list = v_list.sort

memo = {}
comb = []
(0...([K, N].min)).each do |i|
  (0..([K, N].min - i)).each do |j|
    k = K - i - j
    while k >= 0
      comb.push([i, j, k])
      k -= 2
    end
  end
end
ans = 0
comb.each do |(i, j, k)|
  list = (v_list[0...i] || []) + (v_list[(v_list.size - j)..-1] || [])
  rest = if k > list.size && list.size > 0
    k % list.size
  else
    0
  end
  if rest > 0
    ans = [ans, list.sort_by { |v| -v }.take(rest).reduce(0, &:+)].max
  else
    ans = [ans, list.sort.drop(k).reduce(0, &:+)].max
  end
end
puts ans
