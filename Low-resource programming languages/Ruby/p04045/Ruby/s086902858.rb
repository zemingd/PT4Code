s,x=gets.split;a=[*0..9]-gets.split.map(&:to_i)
(puts s;exit)if !j=(0...s.size).find{|i|!a.find{|e|e==s[i].to_i}}
k=j.downto(0).find{|i|x=a.find{|e|e>s[i].to_i}}||-1
puts"#{k<0?a[0]>0?a[0]:a[1]:s[0...k]+x.to_s}"+a[0].to_s*(s.size-k-1)