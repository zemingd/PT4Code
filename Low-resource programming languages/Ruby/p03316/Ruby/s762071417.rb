n = gets.to_i
sn = n.to_s.split("").map(&:to_i).inject(:+)
puts n%sn == 0 ? "Yes" : "No"