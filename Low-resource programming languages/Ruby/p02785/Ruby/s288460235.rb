h,k = gets.split(' ').map(&:to_i)
nums = gets.split(' ').map(&:to_i)
puts nums.size > k ? nums.sort[0..-(k+1)].inject(:+) : 0
