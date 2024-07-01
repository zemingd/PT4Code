S = gets.chomp
MOD = 10 ** 9 + 7

T = []
10.times{|j|
  t = []
  13.times{|k|
    t << (10 * k + j) % 13
  }
  T << t
}

bef = Array.new(13, 0)
bef[0] = 1
(0...S.size).each{|i|
  nxt = Array.new(13, 0)
  if S[i] == '?' then
    10.times{|j|
      t = T[j]
      13.times{|k|
        nxt[t[k]] += bef[k]
      }
    }
  else
    t = T[S[i].to_i]
    13.times{|k|
      nxt[t[k]] += bef[k]
    }
  end
  nxt.each_with_index{|n, i|
    bef[i] = n % MOD
  }
}

puts bef[5]
