n=gets.to_i
a=gets.split.map.with_index{|num,i| num.to_i-(i+1)}
sum=0
b=(a.inject(:+)/a.size.to_f).round
a.each{|an| sum+=(an-b).abs}
puts sum
