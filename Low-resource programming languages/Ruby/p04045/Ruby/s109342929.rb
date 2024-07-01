n,k=gets.split;a=[*0..9]-gets.split.map(&:to_i)
(puts n;exit)if!i1==(0...n.size).find{|i|!a.find{|e|e==n[i].to_i}}
i2=i1.downto(0).find{|i|a.find{|e|e>n[i].to_i}}||-1
puts"#{i2<0?a[0]>0?a[0]:a[1]:n[0...i2]+a.find{|e|e>n[i2].to_i}.to_s}"+a[0].to_s*(n.size-i2-1)