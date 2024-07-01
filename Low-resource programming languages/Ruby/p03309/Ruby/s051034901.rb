n=gets.to_i
a=gets.split(' ').map(&:to_i)
a.map!.with_index{|e,i|e-i-1}
k = ((a.inject(0.0){|r,i| r+=i })/n)
k1 = k.floor
k2 = k.ceil
p [a.inject(0.0){|r,i| r+=(i-k1).abs }.to_i, a.inject(0.0){|r,i| r+=(i-k2).abs }.to_i].min
