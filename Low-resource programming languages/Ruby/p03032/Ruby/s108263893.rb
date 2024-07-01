N, K = gets.chomp.split(" ").map(&:to_i)
V = gets.chomp.split(" ").map(&:to_i)

ans = 0
((K+1)/2..K).each{|k|
  s = V[0...k].inject(:+)
  m = V[0...k].select{|v| v < 0}

  (0..k).each{|i|
    r = [K-k, m.size].min
    rt = r > 0 ? m.sort[0...r].inject(:+) : 0
    ans = (s - rt) if ans < (s - rt)
    if i < k then
      si = V[-i-1]; so = V[k-1-i]
      s += si - so
      m << si if si < 0
      m.delete_at(m.index(so)) if so < 0
    end
  }
}

puts ans
