N = gets.to_i
X = gets.chomp.split(" ").map(&:to_i)

mid = X.sort[N/2-1, 2]
m = (mid[1] + mid[0]) / 2.0

X.each{|y|
  puts y > m ? mid[0] : mid[1]
}
