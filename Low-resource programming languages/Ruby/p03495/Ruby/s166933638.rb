_, k=gets.split.map &:to_i
h={}
gets.split.map{|a| h[a]||=0; h[a]+=1 }
p (h.values.sort[0, h.size-k]||[]).inject(0, :+)
