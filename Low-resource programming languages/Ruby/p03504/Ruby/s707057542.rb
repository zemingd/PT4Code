require 'pp'

N,C=gets.chomp.split(' ').map{|n| n.to_i}
targets = []
1.upto(N){|i|
	targets << gets.chomp.split(' ').map{|n| n.to_i}
}
targets = targets.sort{|a,b| a[0] <=> b[0]}
# pp targets

recs = Array.new(30){[0,0]}
targets.each{|t|
	i = 0
	while(i < 30)
		if(recs[i][0] < t[0] || recs[i][0] == t[0] && recs[i][1] == t[2])
			recs[i][0] = t[1]
			recs[i][1] = t[2]
			break
		end
		i += 1
	end
}
puts recs.count{|i| i[0] > 0}
