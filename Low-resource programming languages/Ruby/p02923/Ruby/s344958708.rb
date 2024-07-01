n = gets.to_i
nums = gets.split.map(&:to_i)
dists = Array.new(n, 0)

current_dist = 0
max_dist_idx = 0
max_dist = -1
last = 10**10



(n - 1).downto(0) do |idx|
    i = nums[idx]
    if last > i
        # last = i
        current_dist = 0
    end
    dists[idx] = current_dist
    if current_dist > max_dist
        max_dist_idx = idx
        max_dist = current_dist 
    end
    last = i
    current_dist += 1
end

puts max_dist