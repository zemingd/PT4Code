ans, n = 0, gets.to_i
gets.split(" ").map {|i|
  a = "%b" % i
  ans += a.size - a.rindex("1") - 1
}
puts ans
