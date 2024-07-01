n,m = gets.split().map(&:to_i)
x = gets.split().map(&:to_i)

x.sort!
p 0 if x.size == 0
d = (0..x.size-2).map {|i| x[i+1] - x[i]}.sort!
d.pop(n-1)
p d == [] ? 0 : d.inject(:+)