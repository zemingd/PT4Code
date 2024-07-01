n,d=gets.split.map &:to_i
p$<.map{|s|s.split.map &:to_i}.combination(2).count{|a,b|s=0;d.times{|i|s+=(a[i]-b[i])**2};s**0.5%1==0}