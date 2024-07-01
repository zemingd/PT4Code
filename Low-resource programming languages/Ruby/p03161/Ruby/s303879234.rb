n,K=gets.split.map &:to_i
h=gets.split.map &:to_i
F=1000000000
d=[0]+[F]*n
(1...n).each{|j|
  (1..K).each{|k|
    d[j] = [d[j], d[j-k] + (h[j] - h[j-k]).abs].min if j-k >= 0
  }
}
p d[n-1]
