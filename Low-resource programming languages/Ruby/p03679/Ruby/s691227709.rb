x, a, b = gets.split.map(&:to_i)
puts b-a > x ? "dangerous" : b-a < 0 ? "delicious" : "safe"