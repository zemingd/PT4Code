n = gets
nn = n.split("").map(&:to_i).inject(:+)
puts n.to_i % nn == 0 ? "Yes" : "No"