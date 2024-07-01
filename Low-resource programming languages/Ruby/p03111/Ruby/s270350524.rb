def debug(k,v) puts "#{k}: #{v}" end
def gs() gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end
 
def desc(ar) ar.sort!{|x,y|y<=>x} end #Using .sort.reverse instead decreases Exec Time but increases Memory Usage
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end
#sumはつかえない

def C(a,b) b==0||a==b ? 1 : (b=a-b if a/2<b;(a-b+1..a).inject(:*)/(1..b).inject(:*)) end 


N,A,B,C = gsmi

def calc(v, ls)
	cost = (0..2).map do |i|
		if v.count(i)==0
			return 5000
		else
			(v.count(i)-1)*10
		end
	end
	cost = sum(cost)
	abc = [-A,-B,-C]
	(0...N).each do |i|
		abc[v[i]] += ls[i] if v[i]!=3
	end
	abc.inject(cost){|ret,n| ret+n.abs}
end

def dfs(depth, v, ls)
	return calc(v, ls) if depth == 0
	(0..3).map do |i|
		v[depth-1] = i
		dfs(depth-1, v, ls)
	end.min
end


ls = []
N.times do
	ls << gi
end

puts dfs(N, []*N, ls)