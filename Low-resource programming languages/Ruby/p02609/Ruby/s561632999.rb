N = gets.to_i
X = gets.chomp.chars

def cnt(n, d)
  return d if n == 0
  wk = (0...n.bit_length).count{|i| n[i] == 1}
  cnt(n % wk, d+1)
end

t = X.count('1')
MOD = X.map{|x| x == '1' ? t-1 : t+1}
(0...N).each{|n|
  wk = 0
  X.each_with_index{|x, i|
    wk = wk << 1
    if i == n then
      wk += 1 if x == '0'
    else
      wk += 1 if x == '1'
    end
    wk = wk % MOD[n]
  }
  puts cnt(wk, 1)
}
