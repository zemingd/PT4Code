gets
puts gets.chomp.split.map(&:to_i).inject(&:gcd)