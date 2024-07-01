a, b, c = gets.split.map(&:to_i)
res = "No"
res = "Yes" if a < b && b< c
puts res