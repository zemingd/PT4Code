a = gets.split.map(&:to_i)
a.unshift(a.pop)
puts a*" "