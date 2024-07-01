a, b, c = gets.split(" ").map(&:to_i)

array = [a, b, c]
newary = array.sort

puts newary.join(" ")