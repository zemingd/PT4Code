n=gets.split("").map(&:to_i)
puts n == n.reverse ? "Yes" : "No"