n,m=gets.split.map(&:to_i)
ss = m.times.map{gets.split.map(&:to_i).tap(&:shift).map{|x|x-1}}
ps = gets.split.map(&:to_i)

puts (1<<n).times.select{|s| ss.each_with_index.all?{|ss,i| ss.map{|ss|s[ss]}.inject(0,&:+)%2 == ps[i]}}.size
