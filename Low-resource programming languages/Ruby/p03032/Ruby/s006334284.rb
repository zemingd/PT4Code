N, K = gets.split.map(&:to_i)
v_list = gets.split.map(&:to_i)

comb = []
(0..K).each do |i|
  (0..(K - i)).each do |j|
    k = K - i - j
    comb.push([i, j, k])
  end
end
ans = 0
comb.each do |(i, j, k)|
  if k > N
    drop_c = K - N
    ans = v_list.sort.drop(drop_c).reduce(0, &:+)
    break
  end
  list = (v_list[0...i] || []) + (v_list[(v_list.size - j)..-1] || [])
  ans = [ans, list.sort.drop(k).reduce(0, &:+)].max
end
puts ans
