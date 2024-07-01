ary = gets.split.map(&:to_i)
puts ary.inject(:+) - ary.min