N, K = gets.split.map(&:to_i)
v_list = gets.split.map(&:to_i)

comb_list = []
(0..([N, K].min)).each do |a|
  (0..([N, K].min - a)).each do |b|
    max_drop_count = K - a - b
    comb_list.push([a, b, max_drop_count])
  end
end

ans = -(2 << 60)
comb_list.each do |(a, b, drop_c)|
  nums = []
  nums = nums + v_list.take(a) if a > 0
  nums = nums + v_list[-b..-1] if b > 0
  nums.sort!
  while drop_c > 0 && !nums.empty? && nums[0] < 0
    nums.shift
    drop_c -= 1
  end
  sum = nums.reduce(0, &:+)
  ans = sum if sum > ans
end
puts ans
