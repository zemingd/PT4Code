a, b, c, d, e, f = gets.split.map(&:to_i)
wa, wb = a * 100, b * 100

wperm = []
0.step(f, wa){|wa_|
  0.step(f, wb){|wb_|
    if (sum = wa_ + wb_) <= f
      wperm << sum
    end
  }
}
sperm = []
0.step(f, c){|c_|
  0.step(f, d){|d_|
    if (sum = c_ + d_) <= f
      sperm << sum
    end
  }
}
wperm = wperm.uniq.select{|x| !x.zero?}
sperm.uniq!

res = [-1, 0, 0]
wperm.each{|w|
  sperm.each{|s|
    next if (ws = w + s) > f || w / 100 * e < s
    res_ = [s.to_f / ws, ws, s]
    res = res_ if res[0] < res_[0]
  }
}
puts res[1..2] * " "
