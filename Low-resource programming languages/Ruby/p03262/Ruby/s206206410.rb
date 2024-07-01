n, x = gets.split(" ").map(&:to_i)

nums = gets.split(" ").map(&:to_i).sort!
diffs = []
diff = nums.last
n.times do |i|
  next if nums[i+1].nil?
  diffs << nums[i+1] - nums[i]
  diff = [(nums[i] - x).abs, diff].min
end

diffs << diff
puts n == 1 ? (nums[0] - x).abs : diffs.reduce(:gcd)