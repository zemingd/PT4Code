nums = gets.chomp.chars.map(&:to_i)

puts nums.drop(2).zip(nums.drop(1), nums).map{|c, b, a|
    (a * 100 + b * 10 + c - 753).abs
}.min
