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

def count_under(k, n)
  cnt = 0
  (1...(3**k)).each{|i|
    wk = i.to_s(3)
    wk = '0' * (k-wk.size) + wk
    next if (/0+/ =~ wk).nil?
    next if (/1+/ =~ wk).nil?
    next if (/2+/ =~ wk).nil?
    wk = wk.gsub(/0/, '3').gsub(/1/, '5').gsub(/2/, '7')
    break if wk > n
    cnt += 1
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
if not (/[8-9]/ =~ N[0]).nil? then
  ans += calc(N.size)
elsif not (/[3-7]/ =~ N[0]).nil? then
  ans += count_under(N.size, N)
end

puts ans
