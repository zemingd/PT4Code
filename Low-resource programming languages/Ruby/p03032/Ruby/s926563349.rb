n, k = gets.split.map(&:to_i)
gems = gets.split.map(&:to_i)
gems_rev = gems.reverse
ans = []
(0..k).each do |left|
  (0..k).each do |right|
    next if left + right > k
    left_gems = gems[0...left]
    left_count = left
    while left_gems.size > 1 && -left_gems.min > left_gems.last
      left_gems.delete_at(-1)
      left_gems.delete_at(left_gems.index(left_gems.min))
      left_count -= 1
    end
    right_gems = gems_rev[0...right]
    right_count = right
    while right_gems.size > 1 && -right_gems.min > right_gems.last
      right_gems.delete_at(-1)
      right_gems.delete_at(right_gems.index(right_gems.min))
      right_count -= 1
    end
    left_sum = left_gems.inject(0) { |res, num| res + num }
    right_sum = right_gems.inject(0) { |res, num| res + num }
    ans << left_sum + right_sum if left_count + right_count <= n
  end
end
puts ans.max
