a, b = gets.split.map(&:to_i)
puts "a " + (a<b ? "<" : a>b ? ">" : "==") + " b"