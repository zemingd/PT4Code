def combi(n, m)
  return 1 if m == 0
  return n if m == 1
  return combi(n, n - m) if m > n - m
  fact_s(n, n - m + 1) / fact_s(m, 1)
end
def fact_s(n, m)
  (m..n).to_a.inject(&:*)
end

N = gets.chomp

def count_under(a, b, c, n)
  r = a+b+c
  s = b+c
  cnt = 0
  (0...r).to_a.combination(a).each{|x|
    str = Array.new(r)
    x.each{|i| str[i] = '3'}
    rst = (0...r).to_a - x
    rst.combination(b).each{|y|
      y.each{|i| str[i] = '5'}
      (rst - y).each{|i| str[i] = '7'}
      cnt += 1 if str.join <= n
    }
  }
  cnt
end

def calc(k)
  ret = 0
  d = Hash.new
  (1..k-2).each{|i|
    (1..k-i-1).each{|j|
      tmp = [i, j, k-i-j].sort
      d[tmp] = combi(k, i) * combi(k-i, j) if not d.key?(tmp)
      ret += d[tmp]
    }
  }
  ret
end

ans = 0
(3..N.size-1).each{|k|
  ans += calc(k)
}
if ["8", "9"].include?(N[0]) then
  ans += calc(N.size)
elsif ["3", "4", "5", "6", "7"].include?(N[0]) then
  n = N.size
  (1..(n-2)).each{|i|
    (1..(n-i-1)).each{|j|
      ans += count_under(i, j, n-i-j, N)
    }
  }
end

puts ans
