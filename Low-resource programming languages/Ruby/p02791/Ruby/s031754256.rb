N = gets.to_i
nums = gets.split.map(&:to_i)
min = Float::INFINITY
ans = 0
nums.each_with_index do |ai, i|
  if ai < m
    m = ai
    ans += 1
  end
end
p ans