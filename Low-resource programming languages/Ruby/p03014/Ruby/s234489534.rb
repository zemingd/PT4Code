H, W = gets.split.map &:to_i
S = $<.map{|s|
  s.chomp
}
hr = H.times.map{ [0] * W }
S.each_with_index{|s, i|
  s.scan(/\.+/){
    l = $`.size
    len = $&.size
    (l...l+len).each{|j|
      hr[i][j] = len
    }
  }
}

T = S.map(&:chars).transpose.map(&:join)
vr = H.times.map{ [0] * W }.transpose
T.each_with_index{|s, i|
  s.scan(/\.+/){
    l = $`.size
    len = $&.size
    (l...l+len).each{|j|
      vr[i][j] = len
    }
  }
}
vr = vr.transpose

ans = 0
H.times{|i|
  W.times{|j|
    a = hr[i][j] + vr[i][j] - 1
    ans = a if a > ans
  }
}
p ans
