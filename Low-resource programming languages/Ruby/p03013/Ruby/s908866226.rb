$m = [1,1,2,3]
def m(i)
   $m[i] ||= m(i-1) + $m[-2]
end

N,M = gets.split.map(&:to_i)
A = readlines.map(&:to_i)
if A.each_cons(2).all? {|a,b| b - a > 1 }
  puts [0, A.map {|n| [n-1, n+1] }, N].flatten
	.each_slice(2).map {|n,m| (n...m).size }.tap {|a| p a }
	.map {|n| m(n) }.inject(:*) % 1000000007
else
  puts 0
end