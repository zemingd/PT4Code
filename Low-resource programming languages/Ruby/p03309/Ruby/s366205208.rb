n=gets.to_i
a=gets.split(' ').map(&:to_i)
a.map!.with_index{|e,i|e-i-1}
k = ((a.inject(0.0){|r,i| r+=i })/n).rount
p a.inject(0.0){|r,i| r+=(i-k).abs }.to_i
