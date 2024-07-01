n, k = gets.split.map(&:to_i)
gems = gets.split.map(&:to_i)
gems_rev = gems.reverse
ans = []
(0..k).each do |left|
  (0..k).each do |right|
    next if left + right > [n, k].min
    left_gems = gems[0...left]
    right_gems = gems_rev[0...right]
    all_gems = left_gems + right_gems
    all_gems.sort!
    (k - left - right).times do
      break if all_gems.empty?
      all_gems.delete_at(0) if all_gems.first < 0
    end
    ans << all_gems.inject(0) { |res, num| res + num }
  end
end
puts ans.max
