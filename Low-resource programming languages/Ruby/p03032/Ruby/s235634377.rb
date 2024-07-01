N, K = gets.split.map &:to_i
V = gets.split.map &:to_i

p (0..K).map{|l|
  f = -> k, v {
    plus_total = 0
    minus = []
    max = 0
    (1..k).map{|i|
      break if v.empty?
      val = v.shift
      if val < 0
        minus << val
      else
        plus_total += val
      end
      max = [max, plus_total + (minus.max([0, minus.size - (k - i)].max).inject(:+) || 0)].max
    }
    max
  }
  v = V.dup
  r = K - l
  vl = v.shift(l)
  vr = v.reverse
  # p [[l, vl], [r, vr]]
  # p [f[l, vl.dup] + f[r, vr.dup]]
  f[l, vl.dup] + f[r, vr.dup]
}.max