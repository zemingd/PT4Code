num = gets.to_i
ary = gets.split(" ").map(&:to_i)

newary = ary.reverse
puts newary.join(" ")