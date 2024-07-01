n = gets.chomp.to_i
as = gets.chomp.split(' ').map(&:to_i)

nums = {}
as.each { |a| nums[a] = (nums[a] || 0) + 1 }

(1..n).each do |i|
    puts nums[i] || 0
end
