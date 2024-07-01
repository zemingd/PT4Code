n=gets.chomp.split("").map(&:to_i)
n.uniq!
puts n.length <= 2 ? "Yes" : "No"