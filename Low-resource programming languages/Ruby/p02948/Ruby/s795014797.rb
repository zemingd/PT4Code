(n,m)=gets.split.map(&:to_i)
ab=ARGF.map{|s| s.split.map(&:to_i) }

tmp=(0..m).map{[]}
ab.each{|a,b|
  tmp[a]<<b if a <= m
}
tmp.each{|a|
  a.sort!
}

cnt=0

(1..m).each{|d|
    max_a = tmp[(1..d)].select{|a|a.size > 0 }.max_by{| a |  a[-1]  }
    if max_a != nil
        cnt+=max_a[-1]
        max_a.pop
    end
}

p cnt