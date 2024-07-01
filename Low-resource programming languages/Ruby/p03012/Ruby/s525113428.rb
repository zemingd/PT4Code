N = gets.chomp.to_i

ws = gets.chomp.split.map(&:to_i)

min_result = 10000

(N - 1).times {|t|
  s1 = ws[0..t]
  s2 = ws[(t + 1)...N]

  absolute = (s1.sum - s2.sum).abs
  min_result = absolute < min_result ? absolute : min_result
}

p min_result
