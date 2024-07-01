gets; nums = gets.strip.split(' ').map(&:to_i)
puts nums.size.times.map { |i|
  ary = nums.dup
  ary.delete_at i
  ary.inject(&:gcd)
}.max
