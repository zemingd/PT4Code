n=gets.to_i
a=gets.split(' ').map(&:to_i)
#p a.map.with_index{|e,i|e-i-1}
b=(0..n).inject(0){|r,i| r+=i }
p ((a.inject(0.0){|r,i| r+=i } - b)/n).round