n, k = gets.chomp.split(" ").map(&:to_i)
nums = []
n.times { nums << gets.chomp.split(" ").map(&:to_i) }

ans = nums[0][0]
nums.each_with_index do |n, i|
  sum = nums[0..i].inject(0) {|memo, cur| memo + cur[1] }

  if k <= sum
    ans = n[0]
    break
  end
end

puts ans
