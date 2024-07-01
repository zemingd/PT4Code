N, K = gets.split.map(&:to_i)
v_list = gets.split.map(&:to_i)
sorted_v_list = v_list.sort

memo = {}
comb = []
(0..K).each do |i|
  (0..(K - i)).each do |j|
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
  ans = [ans, list.sort.drop(k).reduce(0, &:+)].max
end
puts ans
