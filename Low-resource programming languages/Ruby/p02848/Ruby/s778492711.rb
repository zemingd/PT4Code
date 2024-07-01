n,s=gets(p).split
s.chars{|c|n.to_i.times{c.succ!};print c[-1]}