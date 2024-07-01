io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
p a.inject {|s,i|s.gcd(i)}
