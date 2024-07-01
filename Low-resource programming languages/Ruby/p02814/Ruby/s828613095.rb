N, M = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)

lc = 1
A.each{|a|
  lc = lc.lcm(a / 2)
  break if lc > M
}

puts lc > M ? 0 : (((M - lc) / (2 * lc)) + 1)
