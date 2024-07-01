N,M,*A = `dd`.split.map &:to_i
Matches = [ 0, 2, 5, 5, 4, 5, 6, 3, 7, 6 ]
ah = {}
B = A.sort.reverse.map{ |a| ah[Matches[a]] ? nil : a.tap{ |a| ah[Matches[a]] = 1 } }.compact
C = B + [0]

def compare(xh,yh)
  if xh[0] != yh[0]
    return xh[0] > yh[0]
  end
  i = B.index{ |a| xh[a] != yh[a] }
  i ? xh[B[i]] > yh[B[i]] : false
end

dp = (0..N).map{ Hash[C.map{ |a| [a,0] }] }
(0...N).each{ |i|
  next if i > 0 && dp[i][0] == 0
  B.each{ |a|
    n = Matches[a]
    next if i+n > N
    d = dp[i].clone
    d[a] += 1
    d[0] += 1
    if compare(d, dp[i+n])
      dp[i+n] = d
    end
  }
  #p [i, dp[i]]
}
puts B.map{ |a| a.to_s * (dp[N][a] || 0) }.join
