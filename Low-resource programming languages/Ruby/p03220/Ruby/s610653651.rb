N, T, A, *H = gets(p).split.map &:to_i
p H.map.with_index(1){|h, i|[(A - (T - h*0.006)).abs, i]}.min[1]