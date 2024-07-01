N, X = gets.chomp.split(" ").map(&:to_i)
x = gets.chomp.split(" ").map(&:to_i)

ans = (x[0] - X).abs
x.each{|xx|
  ans = ans.gcd((xx - X).abs)
}

puts ans
