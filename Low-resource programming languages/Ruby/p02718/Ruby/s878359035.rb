n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
s = a.inject(:+)
puts a.max(m).min >= s/(4.0*m) ? "Yes" : "No"
