def gs() STDIN.gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end
 
def desc(ar) ar.sort!{|x,y|y<=>x} end
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end

n = gi

vs = gsmi

max = [[[0,0],[0,0]],[[0,0],[0,0]]] #偶奇-１番-k,v

hs = Array.new(2){ Hash.new(0) }

vs.each.with_index{|v,i| hs[i%2][v] += 1 }

2.times do |i|
	hs[i].each  do |k,v|
		if max[i][0][1]<=v
			max[i][0][1], max[i][1][1] = v,max[i][0][1]
			max[i][0][0], max[i][1][0] = k,max[i][0][0]
		end
	end
end

ans = []
ans << n-max[0][1][1]-max[1][0][1]
ans << n-max[0][0][1]-max[1][1][1]

puts max[0][0][0]!=max[1][0][0] ? n-max[0][0][1]-max[1][0][1] : ans.min