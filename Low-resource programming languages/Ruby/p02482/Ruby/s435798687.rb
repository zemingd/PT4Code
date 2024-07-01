a, b = gets.split("\s").map(&:to_i)
puts "a " + (a < b ? "<" : a > b ? ">" : "==") + " b"