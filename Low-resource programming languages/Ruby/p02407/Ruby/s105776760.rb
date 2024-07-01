n = gets.to_i
ary = gets.split.map(&:to_i)
ary.reverse!
puts ary.join(" ")