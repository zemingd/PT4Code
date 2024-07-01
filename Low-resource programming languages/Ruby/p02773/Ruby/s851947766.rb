n=gets.to_i
ans=[]
ary=n.times.map{gets.chomp}
max=ary.tally.values.max
ary.tally.each_pair{|k,v|ans<<k if v==max}
puts ans.sort