# https://atcoder.jp/contests/abc064/tasks/abc064_c


THRESHOLDS = [399, 799, 1199, 1599, 1999, 2399, 2799, 3199]
RES = Hash.new(0)
n = gets.to_i
nums = gets.split.map(&:to_i)

total_highest = 0

nums.each do |n|
  highest_threshold = 1
  THRESHOLDS.each do |threshold|
    # p [n, threshold] if n > threshold
    highest_threshold = threshold if n > threshold
  end
  
  RES[highest_threshold] += 1
  total_highest = [total_highest, highest_threshold].max
end

wilds = RES[3199]
RES.delete(3199)
# p RES
current_colors = RES.keys.size
puts [current_colors, [current_colors + wilds, 7].min]