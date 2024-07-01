n = gets.to_i
a = gets.chomp.split.map(&:to_i)
a_uni = a.uniq.sort
flag = false
if a_uni.size == 1 && a_uni.first.zero?
  flag = true
elsif a_uni.size == 2 && a_uni.first.zero?
  num_0 = a.count(0)
  num_x = a.count(a_uni.last)
  flag = true if num_0 == n/3.0 && num_x == 2 * n/3.0
elsif a_uni.size == 3
  nums = a_uni.map{a.count(_1)}.uniq
  flag = true if nums.size == 1 && nums.first == n/3.0
end
puts flag ? "Yes" : "No"
