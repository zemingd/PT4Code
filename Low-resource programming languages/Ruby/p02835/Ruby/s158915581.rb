a = gets.split.map(&:to_i)
puts a.inject(:+) >=22 ? "bust" : "win"

