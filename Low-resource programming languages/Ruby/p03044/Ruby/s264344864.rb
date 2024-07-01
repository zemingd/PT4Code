require 'set'
N = gets.to_i

edges = (1..(N-1)).map{
	u, v, w = gets.split(/\s+/).map(&:to_i)
	[u, v, w&1]
}.sort_by{|_| _[0] }

even = Set.new [edges.first.first]
edges.each{|u,v,w|
	even << v if (w != 0) ^ even.include?(u)
}

(1..N).each{|v|
	puts(even.include?(v)?"0":"1")
}
