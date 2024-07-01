def debug(k,v) puts "#{k}: #{v}" end
def gs() gets.chomp end
def gi() gets.to_i end
def gsmi() gets.chomp.split.map(&:to_i) end
 
def desc(ar) ar.sort!{|x,y|y<=>x} end #Using .sort.reverse instead decreases Exec Time but increases Memory Usage
def min(a,b) a<=b ? a : b end
def max(a,b) a>=b ? a : b end
def sum(ar) ar.inject(:+) end
def C(a,b) b==0||a==b ? 1 : (b=a-b if a/2<b;(a-b+1..a).inject(:*)/(1..b).inject(:*)) end 

N = gi #10**5
@path = Array.new(N){[]}
(N-1).times do
	u,v,w = gsmi #10**5,10**5,10**9
	@path[u-1] << [v-1,w.even?]
	@path[v-1] << [u-1,w.even?]
end

@seen = Array.new(N){false} #0 or 1
def dfs(n,t)
	@seen[n] = t
	@path[n].each do |m|
		(m[1] ? dfs(m[0],t) : dfs(m[0],1-t)) if !@seen[m[0]]
	end
end

dfs(0,0)
puts @seen