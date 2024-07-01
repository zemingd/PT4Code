require 'set'
N = gets.to_i

even = Set.new
(N-1).times{
	u, v, w = gets.split(/\s+/).map(&:to_i)
	w &= 1

	even << u if even.empty?
	even << v if (w != 0) ^ even.include?(u)
}
(1..N).each{|v|
	puts(even.include?(v)?"0":"1")
}
