a, b, c, d, e, f = gets.split.map(&:to_i)
a, b = a > b ? [a, b] : [b, a]
wa, wb = a * 100, b * 100
max_a = f / wa
max_b = f / wb
wperm = []
max_a.succ.times{|a_|
  max_b.succ.times{|b_|
    if (sum = wa * a_ + wb * b_) <= f
      wperm << sum
    end
  }
}

max_c = f / c
max_d = f / d
sperm = []
max_c.succ.times{|c_|
  max_d.succ.times{|d_|
    if (sum = c * c_ + d * d_) <= f
      sperm << sum
    end
  }
}

res = [0, 0, 0]
wperm.each{|w|
  sperm.each{|s|
    next if w + s > f || w / 100.to_f * e < s

    res_ = [s.to_f / (w + s), w, s]
    res = res_ if res[0] < res_[0]
  }
}
print "#{res[1] + res[2]} #{res[2]}"
puts



