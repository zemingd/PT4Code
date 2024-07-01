N = gets.to_i
L = gets.split.map(&:to_i).sort
dp1 = Array.new(1 << 10, 0)
dp2 = Array.new(1 << 11, 0)

ans = L.inject(0) do |count, l|
  dp2.each_with_index do |n, ab|
    count += n if ab > l
  end
  dp1.each_with_index do |n, a|
    dp2[a + l] += n
  end
  dp1[l] += 1
  count
end
puts ans
