N, K = gets.chomp.split(" ").map(&:to_i)
M = Array.new(N).map!{
  gets.chomp.split(" ").map(&:to_i)
}

ans, wk = [0, K]
M.each{|a, b|
  wk -= b
  (ans = a; break) if wk <= 0
}

puts ans
