n,m=gets.split.map &:to_i
c=Array.new(n){0}
m.times{gets.split.each{|n|c[n.to_i-1]+=1}}
puts c