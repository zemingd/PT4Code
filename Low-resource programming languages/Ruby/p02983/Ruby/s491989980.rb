l, r = gets.split.map(&:to_i)
nums = (l..r).to_a
puts nums.each_cons(2).map { |a, b| (a * b) % 2019 }.min