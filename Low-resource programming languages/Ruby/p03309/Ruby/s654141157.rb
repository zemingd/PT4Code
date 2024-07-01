n=gets.to_i
a=gets.split(' ').map(&:to_i)
a.map!.with_index{|e,i|e-i-1}.sort!
k = a[(a.size/2).to_i]
p a.inject(0.0){|r,i| r+=(i-k).abs }.to_i
