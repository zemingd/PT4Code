def gcd(a,b)
    a,b = b,a%b while b > 0
    a
end

N,X = STDIN.gets.split.map(&:to_i)
x = STDIN.gets.split.map(&:to_i).map{|i| i - X}
p x
puts x.reduce(x[0]){|a, b| gcd(a.abs, b.abs)}.abs
