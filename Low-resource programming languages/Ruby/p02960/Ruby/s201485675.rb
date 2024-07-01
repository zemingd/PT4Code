S = gets.chomp
MOD = 10 ** 9 + 7

bef = Array.new(13, 0)
bef[0] = 1
(0...S.size).each{|i|
  nxt = Array.new(13, 0)
  n = S[i].to_i
  n = -1 if S[i] == '?'
  10.times{|j|
    13.times{|k|
      nxt[(10 * k + j) % 13] += bef[k] if n == -1 || n == j
    }
  }
  bef = nxt.map{|j| j % MOD}
}

puts bef[5]
