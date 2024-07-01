N,K = gets.split.map &:to_i
S = gets.chomp
arr = S.scan(/0+|1+/).map{ |s| s.size }
d = S[0].to_i
ss = [0]
arr.each{ |s| ss << (ss[-1] + s) }
p (0...arr.size).map{ |i|
  j = S[ss[i+1]-1] == "1" ? [i-2*K,0].max : [i-2*K+1,0].max
  # p [ S[ss[i+1]-1], ss[j..i+1] ]
  ss[i+1] - ss[j]
}.max
