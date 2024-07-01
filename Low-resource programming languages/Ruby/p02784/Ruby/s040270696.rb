H, N = gets.split(" ").map(&:to_i)
A = gets.split(" ").map(&:to_i)
r = H
A.each{|a|
  r = r - a
}
puts r <= 0 ? "Yes" : "No"