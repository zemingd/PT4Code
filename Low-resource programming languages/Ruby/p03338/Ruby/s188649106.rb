N = gets.to_i
S = gets.chomp

c = Hash.new{|h, k| h[k] = [-1, -1]}
(0...N).each{|n|
  c[S[n]][0] = n if c[S[n]][0] == -1
  c[S[n]][1] = n
}

puts (0...N).to_a.map{|n| c.count{|k, v| v[0] <= n && n < v[1]}}.max
